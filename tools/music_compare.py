#!/usr/bin/env python3
"""Render mapped Gen 1/Gen 2 music pairs for quick listening."""

from __future__ import annotations

import argparse
import html
import re
import subprocess
import sys
import wave
from pathlib import Path

try:
    import numpy as np
except ImportError as error:
    raise SystemExit("numpy is required; install with pip install -r tools/mid2gbs/requirements.txt") from error

TOOLS = Path(__file__).resolve().parent
ROOT = TOOLS.parent
MUSIC = ROOT / "sound/songs/gbs/music"
CONVERTED = MUSIC / "gen1_converted"
SYNTH_PATH = TOOLS / "mid2gbs"
sys.path.insert(0, str(SYNTH_PATH))
import gbs_synth  # noqa: E402


NOTE_NAMES = {"C_": 0, "Cs": 1, "D_": 2, "Ds": 3, "E_": 4, "F_": 5, "Fs": 6, "G_": 7, "Gs": 8, "A_": 9, "As": 10, "B_": 11}
CHANNEL_RE = re.compile(r"^gbs_[A-Za-z0-9_]+_Ch([1-4]):")

# Using None for entries without a Gen 2 counterpart
PAIRS: tuple[tuple[str, str, str | None], ...] = (
    ("Manual mappings", "dungeon3", "mtmoon"),
    ("Manual mappings", "routes2", "hg_route24"),
    ("Manual mappings", "routes4", "route12"),
    ("Manual mappings", "cities1", "viridiancity"),
    ("Manual mappings", "cities2", "hg_cerulean"),
    
    ("Probable", "dungeon2", "route2"),
    ("Probable", "indigoplateau", "indigoplateau"),
    
    ("No match", "dungeon1", None),
    ("No match", "dungeon3", None),
    ("No match", "pokemontower", None),
    ("No match", "silphco", None),
    ("No match", "cinnabarmansion", None),
    ("No match", "surfingpikachu", None),
    ("No match", "jigglypuffsong", None),
    
    ("Unknown", "meetjessiejames", "lookrocket"),
    ("Unknown", "safarizone", "idk"),
    
    ("Mapping (Strong)", "celadon", "celadoncity"),
    ("Mapping (Strong)", "gymleaderbattle", "kantogymbattle"),
    ("Mapping", "lavender", "lavendertown"),
    ("Mapping", "pallettown", "pallettown"),
    ("Mapping", "routes1", "route1"),
    ("Mapping", "routes3", "route3"),
    ("Mapping", "trainerbattle", "kantotrainerbattle"),
    ("Mapping", "vermilion", "vermilioncity"),
    ("Mapping", "wildbattle", "kantowildbattle"),
    ("Mapping", "cinnabar", "hg_cinnabar"),
    ("Mapping", "cities1", "viridiancity"),
    ("Mapping", "meetfemaletrainer", "looklass"),
    ("Mapping", "museumguy", "showmearound"),
    
    ("Probably correct", "pkmnhealed", "healpokemon"),
    ("Probably correct", "yellowintro", "titlescreen"),
    
    ("IDK", "meetrival", "lookrival"),
    ("IDK", "silphco", "rockethideout"),
    
    ("Probably wrong (Strong)", "credits", "credits"),
    ("Probably wrong", "routes2", "route2"),
    ("Probably wrong", "meetmaletrainer", "lookyoungster"),
    ("Probably wrong", "meeteviltrainer", "lookrocket"),
    ("Probably wrong", "meetprofoak", "profoak"),
    ("Probably wrong", "dungeon2", "darkcave"),
    ("Probably wrong", "finalbattle", "championbattle"),
    
    ("Completely wrong", "cinnabarmansion", "mtmoon"),
    ("Completely wrong", "cities2", "celadoncity"),
    ("Completely wrong", "dungeon1", "mtmoon"),
    ("Completely wrong", "pokemontower", "tintower"),
    ("Completely wrong", "routes4", "route3"),
    ("Completely wrong", "jigglypuffsong", "pokemonlullaby"),
    
    ("Mapping Johto (Strong)", "bikeriding", "bicycle"),
    ("Mapping Johto (Strong)", "gamecorner", "gamecorner"),
    ("Mapping Johto (Strong)", "defeatedwildmon", "wildpokemonvictory"),
    ("Mapping Johto (Strong)", "defeatedtrainer", "trainervictory"),
    ("Mapping Johto (Strong)", "defeatedgymleader", "gymleadervictory"),
    ("Mapping Johto (Strong)", "halloffame", "halloffame"),
    ("Mapping Johto", "pokecenter", "pokemoncenter"),
    ("Mapping Johto", "surfing", "surf"),
    ("Mapping Johto", "titlescreen", "titlescreen"),
    ("Mapping Johto", "ssanne", "ssaqua"),
    ("Mapping Johto", "safarizone", "hg_safarizone"),
    ("Mapping Johto", "indigoplateau", "indigoplateau"),
)


def load_pairs() -> list[tuple[str, str, str | None]]:
    return list(PAIRS)


def source_events(path: Path, duration_limit: float) -> dict[str, list[tuple[float, float, int, float]]]:
    source_lines = path.read_text(encoding="utf-8").splitlines()
    channels: dict[str, list[str]] = {}
    channel = None
    song_tempo = next(
        (float(match.group(1)) for line in source_lines
         if (match := re.match(r"^\s*tempo\s+(\d+(?:\.\d+)?)", line))),
        120.0,
    )
    for line in source_lines:
        match = CHANNEL_RE.match(line.strip())
        if match:
            channel = f"Ch{match.group(1)}"
            channels[channel] = []
        elif channel:
            channels[channel].append(line)

    result: dict[str, list[tuple[float, float, int, float]]] = {}
    for name, lines in channels.items():
        labels = {line.strip()[:-1]: index for index, line in enumerate(lines) if line.strip().endswith(":")}
        octave, tempo, unit, volume, fade, duty, vibrato, transpose = 4, song_tempo, 12, 12, 0, 2, 0, 0
        events: list[tuple[float, float, int, float]] = []
        cursor = 0.0
        max_steps = 100000

        def note_seconds(length: int) -> float:
            return tempo * unit * length / (256.0 * 60.0)

        # (return_index, stop_index, remaining_loops, loop_start_index)
        call_stack: list[tuple[int, int | None, int, int]] = []
        index = 0
        stop = None
        steps = 0

        while cursor < duration_limit and steps < max_steps:
            if stop is not None and index >= stop or index >= len(lines):
                if call_stack:
                    ret_idx, ret_stop, remaining, start_idx = call_stack.pop()
                    if remaining > 1:
                        call_stack.append((ret_idx, ret_stop, remaining - 1, start_idx))
                        index = start_idx
                    else:
                        index, stop = ret_idx, ret_stop
                    continue
                else:
                    break

            steps += 1
            stripped = lines[index].split("@", 1)[0].strip()
            if stripped.endswith(":") or not stripped:
                index += 1
                continue

            fields = stripped.replace(",", " ").split()
            if not fields:
                index += 1
                continue

            command = fields[0]
            try:
                if command == "tempo":
                    tempo = float(fields[1])
                elif command in {"note_type", "drum_speed"}:
                    unit = int(fields[1])
                    if len(fields) >= 3:
                        volume = int(fields[2])
                elif command == "octave":
                    octave = int(fields[1])
                elif command == "transpose":
                    transpose = 12 * int(fields[1]) + int(fields[2])
                elif command in {"sound_call", "sound_jump", "sound_loop"}:
                    target = fields[-1]
                    if target in labels:
                        if command == "sound_jump":
                            index = labels[target] + 1
                            continue
                        count = int(fields[1]) if command == "sound_loop" else 1
                        if count > 0:
                            start_idx = labels[target] + 1
                            call_stack.append((index + 1, stop, count, start_idx))
                            index = start_idx
                            stop = None
                            continue
                elif command == "sound_ret":
                    if call_stack:
                        ret_idx, ret_stop, remaining, start_idx = call_stack.pop()
                        if remaining > 1:
                            call_stack.append((ret_idx, ret_stop, remaining - 1, start_idx))
                            index = start_idx
                        else:
                            index, stop = ret_idx, ret_stop
                        continue
                    else:
                        break
                elif command == "note" and len(fields) >= 3:
                    pitch = NOTE_NAMES[fields[1]] + 12 * (octave + 1) + transpose
                    seconds = note_seconds(int(fields[2]))
                    events.append((cursor, seconds, pitch, volume))
                    cursor += seconds
                elif command == "rest":
                    cursor += note_seconds(int(fields[1]))
            except (KeyError, ValueError, IndexError):
                pass

            index += 1

        result[name] = [(s, d, p, v) for s, d, p, v in events if s < duration_limit]
    return result


def render(path: Path, duration: float) -> np.ndarray:
    return gbs_synth.render(source_events(path, duration), master_scale=0.7)


def write_wav(path: Path, samples: np.ndarray) -> None:
    pcm = np.clip(samples * 32767, -32768, 32767).astype("<i2")
    with wave.open(str(path), "wb") as output:
        output.setnchannels(1)
        output.setsampwidth(2)
        output.setframerate(gbs_synth.SAMPLE_RATE)
        output.writeframes(pcm.tobytes())


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--all", action="store_true")
    parser.add_argument("--pair", action="append")
    parser.add_argument("--list", action="store_true")
    parser.add_argument("--category", action="append")
    parser.add_argument("--duration", type=float, default=60.0)
    parser.add_argument("--output", type=Path, default=ROOT / "build/music_compare")
    parser.add_argument("--open", action="store_true")
    args = parser.parse_args()

    pairs = load_pairs()
    if args.category:
        pairs = [p for p in pairs if p[0] in set(args.category)]
    if args.list:
        for cat, g1, g2 in pairs:
            print(f"{cat:25} {g1:28} -> {g2}")
        return 0

    selected = pairs if args.all or not args.pair else [
        p for p in pairs if p[1] in {n.removeprefix("gbs_") for n in args.pair}
    ]

    gen1_dir = args.output / "gen1"
    gen2_dir = args.output / "gen2"
    gen1_dir.mkdir(parents=True, exist_ok=True)
    gen2_dir.mkdir(parents=True, exist_ok=True)

    rows: list[str] = []
    handled_gen1 = set()

    for category, gen1, gen2 in selected:
        handled_gen1.add(gen1)
        gen1_path = CONVERTED / f"gbs_{gen1}.s"
        
        if not gen1_path.exists():
            print(f"skip missing Gen 1: {gen1_path}", file=sys.stderr)
            continue
            
        gen1_filename = f"{gen1}_gen1.wav"
        write_wav(gen1_dir / gen1_filename, render(gen1_path, args.duration))

        if gen2 is not None and gen2 != "idk":
            gen2_path = MUSIC / f"gbs_{gen2}.s"
            if not gen2_path.exists():
                print(f"skip missing Gen 2: {gen2_path}", file=sys.stderr)
                rows.append(f"<h2>{html.escape(category)}: {html.escape(gen1)} (Gen 2 '{gen2}' missing)</h2>"
                            f"<p>Gen 1: <audio controls preload='none' src='gen1/{html.escape(gen1_filename)}'></audio></p>")
                continue
                
            gen2_filename = f"{gen2}_gen2.wav"
            write_wav(gen2_dir / gen2_filename, render(gen2_path, args.duration))
            rows.append(
                f"<h2>{html.escape(category)}: {html.escape(gen1)} vs {html.escape(gen2)}</h2>"
                f"<p>Gen 1: <audio controls preload='none' src='gen1/{html.escape(gen1_filename)}'></audio></p>"
                f"<p>Gen 2: <audio controls preload='none' src='gen2/{html.escape(gen2_filename)}'></audio></p>"
            )
        else:
            rows.append(
                f"<h2>{html.escape(category)}: {html.escape(gen1)} (No Gen 2 match)</h2>"
                f"<p>Gen 1: <audio controls preload='none' src='gen1/{html.escape(gen1_filename)}'></audio></p>"
            )

    # Find unmapped Gen 1 files
    unmapped_rows = []
    for path in sorted(CONVERTED.glob("gbs_*.s")):
        gen1 = path.stem.removeprefix("gbs_")
        if gen1 not in handled_gen1:
            gen1_filename = f"{gen1}_unmapped.wav"
            write_wav(gen1_dir / gen1_filename, render(path, args.duration))
            unmapped_rows.append(
                f"<h3>{html.escape(gen1)}</h3>"
                f"<p><audio controls preload='none' src='gen1/{html.escape(gen1_filename)}'></audio></p>"
            )

    html_content = (
        "<!doctype html><meta charset='utf-8'><title>Kanto music comparison</title>"
        "<p>Each clip is a separate Gen 1 converted or Gen 2 WAV file.</p>"
        + "\n".join(rows)
    )

    if unmapped_rows:
        html_content += "<h2>No known mapping (Unhandled Gen 1 files)</h2>" + "\n".join(unmapped_rows)

    playlist = args.output / "index.html"
    playlist.write_text(html_content, encoding="utf-8")
    
    print(playlist)
    if args.open:
        subprocess.Popen(["xdg-open", str(playlist)])
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
