#!/usr/bin/env python3
"""
check_merge.py -- consistency checker for the FRLG Kanto / HnS Johto merge
==========================================================================

Finds exactly the class of bugs the compiler does NOT see:
  * flags/vars stubbed to 0 but used in active scripts
  * vars shared by two name spaces (silent state clobbering)
  * warps pointing nowhere or into a disabled map
  * connections that are only registered on one side
  * layouts referenced by active maps but not enabled
  * MAPSECs that collapse to 0 in the current build
  * maps without a wild encounter table (informational only)

Usage (from the repository root):
    python3 check_merge.py                 # checks MAP_VERSION=hns
    python3 check_merge.py --version frlg
    python3 check_merge.py --only warps,flags
    python3 check_merge.py --quiet         # summary only

Exit code 1 if errors (not warnings) were found -> usable in CI.
"""

import argparse
import json
import os
import re
import sys
from collections import defaultdict

MAPS_DIR = "data/maps"
LAYOUTS = "data/layouts/layouts.json"
WILD = "src/data/wild_encounters.json"
REGION_MAP = "src/data/region_map/region_map_sections.json"
EVENT_SCRIPTS = "data/event_scripts.s"

DEFINE_RE = re.compile(r"^\s*#define\s+(\w+)\s+(0x[0-9A-Fa-f]+|\d+)\s*(?://.*)?$")

# ---------------------------------------------------------------- utilities

class Report:
    def __init__(self, quiet=False):
        self.errors = []
        self.warnings = []
        self.notes = []
        self.quiet = quiet

    def error(self, section, msg):
        self.errors.append((section, msg))

    def warn(self, section, msg):
        self.warnings.append((section, msg))

    def note(self, section, msg):
        self.notes.append((section, msg))

    def dump(self):
        for label, bucket in (("FEHLER", self.errors),
                              ("WARNUNG", self.warnings),
                              ("HINWEIS", self.notes)):
            if not bucket:
                continue
            if self.quiet and label == "HINWEIS":
                continue
            print(f"\n===== {label} ({len(bucket)}) =====")
            by_section = defaultdict(list)
            for section, msg in bucket:
                by_section[section].append(msg)
            for section, msgs in by_section.items():
                print(f"\n-- {section} --")
                shown = msgs if not self.quiet else msgs[:10]
                for m in shown:
                    print(f"   {m}")
                if len(msgs) > len(shown):
                    print(f"   ... und {len(msgs) - len(shown)} weitere")
        print("\n===== ZUSAMMENFASSUNG =====")
        print(f"Fehler:    {len(self.errors)}")
        print(f"Warnungen: {len(self.warnings)}")
        print(f"Hinweise:  {len(self.notes)}")


def parse_defines(path):
    """Reads #define NAME VALUE from a header. Numeric literals only."""
    out = {}
    if not os.path.exists(path):
        return out
    with open(path, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            m = DEFINE_RE.match(line)
            if m:
                out[m.group(1)] = int(m.group(2), 0)
    return out



RELATIVE_RE = re.compile(r"^\s*#define\s+(\w+)\s+\((\w+)\s*\+")

# Placeholder value for relatively defined flags: real, but not evaluable.
# Must lie outside the TEMP range (0x00-0x1F).
RELATIVE_MARKER = 0x2000


def parse_relative_defines(path):
    """Names from headers of the form '#define X (BASE+0x1)'.

    parse_defines() only recognizes bare numbers; the generated Kanto
    headers, however, compute relative to a base.
    """
    out = set()
    if not os.path.exists(path):
        return out
    with open(path, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            m = RELATIVE_RE.match(line)
            if m:
                out.add(m.group(1))
    return out

def load_maps():
    """Loads every data/maps/*/map.json, keyed by map name."""
    maps = {}
    for entry in sorted(os.listdir(MAPS_DIR)):
        path = os.path.join(MAPS_DIR, entry, "map.json")
        if not os.path.exists(path):
            continue
        try:
            with open(path, encoding="utf-8") as fh:
                data = json.load(fh)
        except Exception as exc:
            print(f"WARN: {path} nicht lesbar: {exc}", file=sys.stderr)
            continue
        data.setdefault("game_version", "emerald")
        data["_dir"] = entry
        maps[data["name"]] = data
    return maps


# ---------------------------------------------------------------- checks

def check_layouts(maps, active_names, version, rep):
    """Checks layout files and that active maps use layouts of this build."""
    if not os.path.exists(LAYOUTS):
        return
    with open(LAYOUTS, encoding="utf-8") as fh:
        data = json.load(fh)
    active_layouts = set()
    all_layouts = set()
    for lay in data.get("layouts", []):
        if not isinstance(lay, dict) or "id" not in lay:
            continue
        all_layouts.add(lay["id"])
        if lay.get("game_version", "emerald") == version:
            active_layouts.add(lay["id"])
        for key in ("border_filepath", "blockdata_filepath"):
            path = lay.get(key)
            if path and not os.path.exists(path):
                rep.warn("layouts",
                         f"{lay['id']}: {key} fehlt auf der Platte ({path})")
        # Check the size against the declared dimensions. A border.bin that
        # is too short makes the engine read past the end of the file -
        # unrelated tiles then appear at the map edge.
        border = lay.get("border_filepath")
        if border and os.path.exists(border):
            need = lay.get("border_width", 2) * lay.get("border_height", 2) * 2
            have = os.path.getsize(border)
            if have < need:
                rep.error("layouts",
                          f"{lay['id']}: border.bin ist {have} Byte, "
                          f"{lay.get('border_width', 2)}x{lay.get('border_height', 2)} "
                          f"braucht {need}")
        blocks = lay.get("blockdata_filepath")
        if blocks and os.path.exists(blocks):
            need = lay.get("width", 0) * lay.get("height", 0) * 2
            have = os.path.getsize(blocks)
            # Too small is dangerous - the engine reads past the end.
            # Too large is only unused space.
            if have < need:
                rep.error("layouts",
                          f"{lay['id']}: map.bin ist {have} Byte, "
                          f"{lay.get('width')}x{lay.get('height')} braucht {need}")
            elif have > need:
                rep.note("layouts",
                         f"{lay['id']}: map.bin ist {have} Byte, "
                         f"noetig waeren {need}")
    for name in sorted(active_names):
        layout = maps[name].get("layout")
        if not layout:
            rep.error("layouts", f"{name}: kein Layout gesetzt")
        elif layout not in all_layouts:
            rep.error("layouts", f"{name}: Layout {layout} existiert nicht")
        elif layout not in active_layouts:
            rep.error("layouts",
                      f"{name}: Layout {layout} ist im Build '{version}' "
                      f"NICHT aktiv -> Map laedt schwarz")


def check_warps(maps, active_names, rep):
    """Checks that warps of active maps lead to existing, active maps and warp ids."""
    id_to_name = {m["id"]: n for n, m in maps.items() if "id" in m}
    active_ids = {maps[n]["id"] for n in active_names if "id" in maps[n]}
    for name in sorted(active_names):
        m = maps[name]
        for i, warp in enumerate(m.get("warp_events") or []):
            dest = warp.get("dest_map")
            if dest in (None, "MAP_NONE", "MAP_DYNAMIC"):
                continue
            if dest not in id_to_name:
                rep.error("warps",
                          f"{name} Warp #{i} -> {dest} (Map-ID existiert nicht)")
                continue
            if dest not in active_ids:
                rep.error("warps",
                          f"{name} Warp #{i} -> {dest} "
                          f"(Ziel im aktuellen Build deaktiviert)")
                continue
            target = maps[id_to_name[dest]]
            n_warps = len(target.get("warp_events") or [])
            try:
                wid = int(warp.get("dest_warp_id", 0))
            except (TypeError, ValueError):
                rep.warn("warps",
                         f"{name} Warp #{i}: dest_warp_id nicht numerisch "
                         f"({warp.get('dest_warp_id')!r})")
                continue
            if wid >= n_warps:
                rep.error("warps",
                          f"{name} Warp #{i} -> {dest} Warp-ID {wid}, "
                          f"aber Ziel hat nur {n_warps} Warps")


OPPOSITE = {"up": "down", "down": "up", "left": "right", "right": "left"}


def check_connections(maps, active_names, rep):
    """Checks that map connections exist on both sides with mirrored offsets."""
    id_to_name = {m["id"]: n for n, m in maps.items() if "id" in m}
    active_ids = {maps[n]["id"] for n in active_names if "id" in maps[n]}
    for name in sorted(active_names):
        m = maps[name]
        my_id = m.get("id")
        for conn in m.get("connections") or []:
            dest = conn.get("map")
            direction = conn.get("direction")
            if dest not in id_to_name:
                rep.error("connections",
                          f"{name} {direction} -> {dest} (Map-ID existiert nicht)")
                continue
            if dest not in active_ids:
                rep.error("connections",
                          f"{name} {direction} -> {dest} "
                          f"(Ziel im aktuellen Build deaktiviert)")
                continue
            if direction in ("dive", "emerge"):
                continue
            target = maps[id_to_name[dest]]
            back = [c for c in (target.get("connections") or [])
                    if c.get("map") == my_id
                    and c.get("direction") == OPPOSITE.get(direction)]
            if not back:
                rep.error("connections",
                          f"{name} {direction} -> {dest}, aber {dest} hat "
                          f"keine Gegenrichtung ({OPPOSITE.get(direction)}) zurueck")
                continue
            if back[0].get("offset") != -conn.get("offset", 0):
                rep.warn("connections",
                         f"{name} <-> {dest}: Offsets nicht gespiegelt "
                         f"({conn.get('offset')} vs {back[0].get('offset')}) "
                         f"-> Kartenrand versetzt")


def check_mapsecs(maps, active_names, version, rep):
    """Checks that the region map sections of active maps exist in this build."""
    if not os.path.exists(REGION_MAP):
        return
    with open(REGION_MAP, encoding="utf-8") as fh:
        data = json.load(fh)
    hns_ids = {s["id"] for s in data.get("hns_map_sections", [])}
    hoenn = {s["id"] for s in data.get("map_sections", [])}
    in_hns = {s["id"] for s in data.get("map_sections", []) if "in_hns" in s}
    if version == "hns":
        valid = hns_ids | in_hns
    else:
        valid = hoenn
    seen = defaultdict(list)
    for name in sorted(active_names):
        sec = maps[name].get("region_map_section")
        if not sec:
            continue
        seen[sec].append(name)
        if sec not in valid:
            rep.error("mapsecs",
                      f"{name}: {sec} ist im Build '{version}' nicht definiert "
                      f"-> kollabiert auf 0 (falscher Kartenname/Flugpunkt)")
    for sec, names in sorted(seen.items()):
        versions = {maps[n].get("game_version") for n in names}
        if len(versions) > 1:
            rep.note("mapsecs",
                     f"{sec} wird von mehreren Versionen benutzt: "
                     f"{', '.join(sorted(versions))} ({len(names)} Maps)")


def collect_script_symbols(active_names, maps):
    """Collects all FLAG_/VAR_ identifiers from the scripts of active maps."""
    used_flags = defaultdict(set)
    used_vars = defaultdict(set)
    token = re.compile(r"\b(FLAG_[A-Z0-9_]+|VAR_[A-Z0-9_]+)\b")
    for name in active_names:
        # Object, coord and BG events refer to flags and vars in map.json.
        # Reading only scripts.inc would wrongly consider them unused.
        text = json.dumps(maps[name])
        path = os.path.join(MAPS_DIR, maps[name]["_dir"], "scripts.inc")
        if os.path.exists(path):
            with open(path, encoding="utf-8", errors="replace") as fh:
                text += fh.read()
        for tok in token.findall(text):
            if tok.startswith("FLAG_"):
                used_flags[tok].add(name)
            else:
                used_vars[tok].add(name)
    return used_flags, used_vars


def check_flags(used_flags, version, rep):
    """Reports used flags that are stubbed to 0 or lie in the TEMP range."""
    header = ("include/constants/flags_hns.h" if version == "hns"
              else "include/constants/flags_frlg.h")
    # parse_defines() does not see #if branches. For many names flags.h
    # contains both the real value and a 0 dummy from an inactive branch.
    # A flag therefore only counts as stubbed if NO source provides a real
    # value.
    defines = {}
    for src in (header,
                "include/constants/flags.h",
                "include/constants/flags_hoenn_de.h"):
        for key, val in parse_defines(src).items():
            if val != 0 or key not in defines:
                defines[key] = val
        # Many flags are defined relatively, e.g. (SYS_FLAGS + 0x93).
        # parse_defines() only sees bare numbers and would otherwise mistake
        # them for the 0 dummy from flags.h.
        for key in parse_relative_defines(src):
            defines[key] = RELATIVE_MARKER
    # Kanto merge: flags_frlg_hns.h does #undef and assigns real slots.
    # Without this file the check would wrongly report the remapped flags
    # as "stubbed to 0".
    for key in parse_relative_defines("include/constants/flags_frlg_hns.h"):
        defines[key] = 0x3000  # real slot in SaveBlock3
    for flag in sorted(used_flags):
        val = defines.get(flag)
        if val is None:
            continue  # possibly defined via a macro -- the linker catches that
        if val == 0:
            users = sorted(used_flags[flag])
            rep.error("flags-stub",
                      f"{flag} ist auf 0 gestubbt, wird aber von "
                      f"{len(users)} Map(s) benutzt, z.B. {users[0]}")
        elif val <= 0x1F:
            rep.warn("flags-temp",
                     f"{flag} = {hex(val)} liegt im TEMP-Bereich "
                     f"(wird bei jedem Kartenwechsel geloescht)")


def check_var_collisions(used_vars, rep):
    """Collisions based on the EFFECTIVE values.

    vars.h includes vars_frlg.h, vars_hns.h, vars_hoenn_de.h and
    vars_frlg_hns.h one after another - the later definition wins. Comparing
    only vars_frlg.h against vars_hns.h would report collisions that a later
    redefinition resolved long ago.
    Note: vars.h itself (Emerald vars) and vars_origin_jade.h are not part
    of this check - tools/check_flags.py covers all vars numerically.
    """
    order = ["include/constants/vars_frlg.h",
             "include/constants/vars_hns.h",
             "include/constants/vars_hoenn_de.h"]
    effective = {}
    for src in order:
        effective.update(parse_defines(src))
    for name in parse_relative_defines("include/constants/vars_frlg_hns.h"):
        effective[name] = -1  # own range in SaveBlock3, collision-free

    by_value = defaultdict(list)
    for name, val in effective.items():
        if val == -1 or not (0x4020 <= val <= 0x41FF):
            continue
        by_value[val].append(name)

    for val, names in sorted(by_value.items()):
        if len(names) < 2:
            continue
        active = sorted(n for n in names if n in used_vars)
        if len(active) > 1:
            rep.error("var-kollision",
                      f"{hex(val)}: {' | '.join(active)} -- beide aktiv benutzt")
        elif len(names) > 1:
            rep.note("var-kollision",
                     f"{hex(val)}: {' | '.join(sorted(names))} "
                     f"(hoechstens eine Seite benutzt)")


def check_wild(maps, active_names, rep):
    """Notes encounter tables of inactive maps and routes without a table."""
    if not os.path.exists(WILD):
        return
    with open(WILD, encoding="utf-8") as fh:
        data = json.load(fh)
    have = set()
    for group in data.get("wild_encounter_groups", []):
        if not group.get("for_maps"):
            continue
        for enc in group.get("encounters", []):
            have.add(enc["map"])
    active_ids = {maps[n]["id"] for n in active_names if "id" in maps[n]}
    for mid in sorted(have - active_ids):
        rep.note("wild",
                 f"{mid}: Encounter-Tabelle vorhanden, Map aber nicht aktiv")
    outdoor = {"MAP_TYPE_ROUTE", "MAP_TYPE_TOWN", "MAP_TYPE_CITY",
               "MAP_TYPE_UNDERGROUND", "MAP_TYPE_UNDERWATER"}
    for name in sorted(active_names):
        m = maps[name]
        if m.get("map_type") == "MAP_TYPE_ROUTE" and m.get("id") not in have:
            rep.note("wild", f"{name}: Route ohne Encounter-Tabelle")


def check_script_includes(maps, active_names, rep):
    """Reports active maps whose scripts.inc is not included in event_scripts.s."""
    if not os.path.exists(EVENT_SCRIPTS):
        return
    with open(EVENT_SCRIPTS, encoding="utf-8", errors="replace") as fh:
        text = fh.read()
    included = set(re.findall(r'\.include\s+"data/maps/([^/]+)/scripts\.inc"', text))
    for name in sorted(active_names):
        d = maps[name]["_dir"]
        path = os.path.join(MAPS_DIR, d, "scripts.inc")
        if os.path.exists(path) and d not in included:
            rep.error("event_scripts",
                      f"{name}: scripts.inc existiert, ist aber nicht in "
                      f"event_scripts.s eingebunden")


def check_duplicate_symbols(maps, active_names, rep):
    """Finds labels that are defined in more than one active script."""
    label = re.compile(r"^([A-Za-z_][A-Za-z_0-9]*)::", re.M)
    owners = defaultdict(list)
    for name in active_names:
        path = os.path.join(MAPS_DIR, maps[name]["_dir"], "scripts.inc")
        if not os.path.exists(path):
            continue
        with open(path, encoding="utf-8", errors="replace") as fh:
            for sym in set(label.findall(fh.read())):
                owners[sym].append(name)
    for sym, names in sorted(owners.items()):
        if len(set(names)) > 1:
            rep.error("symbol-dubletten",
                      f"{sym} definiert in: {', '.join(sorted(names))}")



def check_tilesets(maps, active_names, rep):
    """Checks whether a tileset's attribute width matches the layout_version.

    FRLG layouts read metatile_attributes.bin as u32 (behavior in bits 0-8,
    layer in bits 29-30), all others as u16 (0-7 / 12-15). A tileset with
    the wrong width yields random values for the layer -> graphics are
    drawn above the player.
    """
    if not os.path.exists(LAYOUTS):
        return
    data = json.load(open(LAYOUTS, encoding="utf-8"))
    dirs = {}
    for root in ("primary", "secondary"):
        base = os.path.join("data/tilesets", root)
        if not os.path.isdir(base):
            continue
        for d in os.listdir(base):
            dirs.setdefault(d, os.path.join(base, d))

    def to_dir(symbol):
        s = symbol.replace("gTileset_", "")
        s = re.sub(r"(?<!^)(?=[A-Z])", "_", s).lower()
        return dirs.get(s.replace("__", "_"))

    def width(path):
        attr = os.path.join(path, "metatile_attributes.bin")
        meta = os.path.join(path, "metatiles.bin")
        if not (os.path.exists(attr) and os.path.exists(meta)):
            return None
        count = os.path.getsize(meta) // 16
        return os.path.getsize(attr) / count if count else None

    used = defaultdict(set)
    for lay in data.get("layouts", []):
        if not isinstance(lay, dict) or lay.get("game_version") != "hns":
            continue
        for key in ("primary_tileset", "secondary_tileset"):
            if lay.get(key):
                used[lay[key]].add((lay.get("layout_version"), lay.get("id")))

    for symbol, entries in sorted(used.items()):
        path = to_dir(symbol)
        if not path:
            continue
        w = width(path)
        if w is None:
            continue
        versions = {v for v, _ in entries}
        expected = 4.0 if "frlg" in versions else 2.0
        if "frlg" in versions and len(versions) > 1:
            rep.error("tilesets",
                      f"{symbol}: von frlg- UND {sorted(versions - {'frlg'})}-Layouts "
                      f"benutzt - eine Breite kann nicht fuer beide stimmen")
        elif w != expected:
            sample = sorted(i for _, i in entries)[:1]
            rep.error("tilesets",
                      f"{symbol}: {w:g} Byte/Metatile, erwartet {expected:g} "
                      f"fuer layout_version {sorted(versions)} (z.B. {sample[0]})")



def check_warp_reciprocity(maps, active_names, rep):
    """Reports warps whose destination warp does not lead back.

    Catches swapped map IDs: MAP_VICTORY_ROAD_1F is Hoenn's Victory Road,
    FRLG's is called MAP_VICTORY_ROAD_1F_FRLG. A warp there compiles and
    loads - the player just ends up in the wrong region.
    """
    id_to_name = {m["id"]: n for n, m in maps.items() if "id" in m}
    active_ids = {maps[n]["id"] for n in active_names if "id" in maps[n]}
    for name in sorted(active_names):
        m = maps[name]
        my_id = m.get("id")
        for i, warp in enumerate(m.get("warp_events") or []):
            dest = warp.get("dest_map")
            if dest in (None, "MAP_NONE", "MAP_DYNAMIC") or dest not in active_ids:
                continue
            target = maps[id_to_name[dest]]
            try:
                wid = int(warp.get("dest_warp_id", 0))
            except (TypeError, ValueError):
                continue
            back = (target.get("warp_events") or [])
            if wid >= len(back):
                continue
            if back[wid].get("dest_map") != my_id:
                rep.warn("warp-einbahn",
                         f"{name} Warp #{i} -> {dest}#{wid}, aber dort fuehrt "
                         f"Warp #{wid} nach {back[wid].get('dest_map')}")



RELATIVE_VALUE_RE = re.compile(
    r"#define\s+(\w+)\s+\((\w+)\+0x([0-9A-Fa-f]+)\)")


def check_generated_headers(rep):
    """Slots assigned twice in the generated Kanto headers.

    The headers are extended step by step. Getting the base wrong while
    doing so assigns a number twice - both names then point to the same
    bit or var without the compiler complaining.
    """
    for path in ("include/constants/flags_frlg_hns.h",
                 "include/constants/vars_frlg_hns.h",
                 "include/constants/opponents_frlg_hns.h"):
        if not os.path.exists(path):
            continue
        by_value = defaultdict(list)
        ends = 0
        with open(path, encoding="utf-8", errors="replace") as fh:
            for line in fh:
                if "_END (" in line and line.startswith("#define"):
                    ends += 1
                m = RELATIVE_VALUE_RE.match(line.strip())
                if m and not m.group(1).endswith("_END"):
                    by_value[(m.group(2), int(m.group(3), 16))].append(m.group(1))
        for (base, val), names in sorted(by_value.items()):
            if len(names) > 1:
                rep.error("header-slots",
                          f"{os.path.basename(path)}: {base}+{hex(val)} ist "
                          f"{len(names)}x vergeben - {', '.join(names)}")
        if ends > 1:
            rep.error("header-slots",
                      f"{os.path.basename(path)}: {ends} Definitionen von "
                      f"*_END - nur die letzte gilt, die anderen taeuschen")


# ---------------------------------------------------------------- main

ALL_CHECKS = ["layouts", "warps", "connections", "mapsecs", "flags",
              "vars", "wild", "includes", "symbols", "tilesets", "reciprocity", "headers"]


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--version", default="hns",
                    choices=["hns", "frlg", "emerald"],
                    help="Ziel-MAP_VERSION (Default: hns)")
    ap.add_argument("--only", default="",
                    help="Nur diese Checks, kommasepariert: " + ",".join(ALL_CHECKS))
    ap.add_argument("--quiet", action="store_true",
                    help="Nur die ersten 10 Meldungen je Kategorie")
    args = ap.parse_args()

    if not os.path.isdir(MAPS_DIR):
        sys.exit(f"FEHLER: {MAPS_DIR} nicht gefunden -- bitte im Repo-Wurzel "
                 f"ausfuehren.")

    wanted = set(a.strip() for a in args.only.split(",") if a.strip()) or set(ALL_CHECKS)
    rep = Report(quiet=args.quiet)

    maps = load_maps()
    active = {n for n, m in maps.items() if m["game_version"] == args.version}

    print(f"Build-Version : {args.version}")
    print(f"Maps gesamt   : {len(maps)}")
    print(f"Maps aktiv    : {len(active)}")
    print(f"Maps inaktiv  : {len(maps) - len(active)}")

    if "layouts" in wanted:
        check_layouts(maps, active, args.version, rep)
    if "warps" in wanted:
        check_warps(maps, active, rep)
    if "reciprocity" in wanted:
        check_warp_reciprocity(maps, active, rep)
    if "connections" in wanted:
        check_connections(maps, active, rep)
    if "mapsecs" in wanted:
        check_mapsecs(maps, active, args.version, rep)
    if "includes" in wanted:
        check_script_includes(maps, active, rep)
    if "symbols" in wanted:
        check_duplicate_symbols(maps, active, rep)
    if "wild" in wanted:
        check_wild(maps, active, rep)
    if "tilesets" in wanted:
        check_tilesets(maps, active, rep)
    if "headers" in wanted:
        check_generated_headers(rep)

    if {"flags", "vars"} & wanted:
        used_flags, used_vars = collect_script_symbols(active, maps)
        if "flags" in wanted:
            check_flags(used_flags, args.version, rep)
        if "vars" in wanted:
            check_var_collisions(used_vars, rep)

    rep.dump()
    return 1 if rep.errors else 0


if __name__ == "__main__":
    sys.exit(main())
