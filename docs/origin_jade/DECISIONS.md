# Origin Jade - decision log

This file records what was decided for Origin Jade, why, and where it lives
in the code. It is meant for everyone who works on the project later, so
that decisions are not undone by accident or argued again from scratch.

## How to use this log

- Every entry has an ID (`D-` decision, `P-` planned but not built,
  `O-` open question). IDs are never reused or renumbered. New entries go at
  the end of their list.
- Status: **Active**, **Superseded** (the entry names its successor),
  **Planned** (decided, not built yet) or **Open** (no decision yet).
- Code that implements a decision should name its ID in a comment, e.g.
  `see docs/origin_jade/DECISIONS.md, D-010`.
- Before changing something listed here, change the entry first (or add a
  new one that supersedes it) and say why.
- Commit IDs in the "Evidence" lines point to the commits in which the
  decision was made or explained. Most of those commit messages are in
  German and explain the reasoning in detail.

The entries up to 2026-09-17 were reconstructed from the full commit
history of the `balancing` branch and the comments in the code. Entries
dated 2026-10-10 or later were decided directly.

---

## Story and world

### D-001 Story order Kanto -> Johto -> Hoenn, Kanto is chapter one
- **Status:** Active (since 2026-08-20)
- **Decision:** The game starts in Pallet Town. Kanto comes from FireRed /
  LeafGreen (its maps now drawn on the HnS layouts), Johto from Heart & Soul,
  Hoenn from Emerald. The HnS version of Kanto is retired (D-019).
- **Rules:** Kanto is the first of three chapters: after the Kanto league
  there are no credits. Oak's farewell scene at the Indigo Plateau ends with
  "come to my lab" and the player waking up at home. The credits belong to
  the end of the whole journey.
- **Evidence:** ff120d4dcf (Kanto merge), 88f9b2863f, 311a0b7f16,
  533a956251, d5b32f3bdd, fb4e3827a5. Version plan: 0.7 Johto started,
  0.8 Johto finished, 0.9 special features (Nuzlocke, randomizer), 1.0
  release after the beta (e2e9ebff45).

### D-002 Home is Pallet Town - after every league
- **Status:** Active (2026-10-10). Supersedes the rule
  "New Bark Town once Johto was visited" from a740935891.
- **Decision:** Mom lives in Pallet Town only. The house in New Bark Town
  belongs to a stranger, and Littleroot Town has no player family (Brendan's
  house is Norman's family, May's house is Professor Birch's). After every
  league - Kanto, Johto, Hoenn, and after Red - the player wakes up at home
  in Pallet Town.
- **Why:** The player grew up in Pallet Town (intro text), Mom gives the
  PokeCom and the Running Shoes there, her savings menu moved there, the
  wall clock is set there. Waking up in New Bark Town or Littleroot Town
  contradicts all of that.
- **Code:** `GameClear` and `EnterHallOfFame` in
  `src/post_battle_event_funcs.c`; `setrespawn` in
  `PokemonLeague_HallOfFame_hns`, `EverGrandeCity_HallOfFame` (HnS branch),
  `MtSilver_SummitDay_hns`, `data/scripts/new_game.inc`; the respawn fallback
  in `src/overworld.c`; the Abra teleport "home" in
  `IndigoPlateau_PokemonCenter_hns`. Fly to Littleroot lands in front of the
  lab, not in a bedroom (c41aa5ed17).
- **Evidence:** 91a23faa50 (intro: the player lives in Pallet Town),
  515df62894 / c8104f5e3a / 458db58a02 (Mom in Pallet), e77afc248a (New Bark
  is not home any more, savings moved), 848361320c (wall clock in Pallet),
  23e37d3239 (house interiors swapped), e2383a2ff6 / c6d873d96f (Littleroot
  families), ca0ca34bf4 (Birch sees off "the foreign champion").

### D-003 Rivals and families
- **Status:** Active
- **Decision:** Blue is the rival in Kanto, Silver in Johto, May in Hoenn
  (always May, starter line fixed to Torchic). `{RIVAL}` resolves by region:
  Kanto `rivalNameKanto` (SaveBlock3), Johto `rivalName`, Hoenn May.
  Norman is a regular gym leader, not the player's father.
- **Evidence:** 92afbf1a13, 9163d7dd9f, b751e8ca72, dea50a503c, 3e9cd28737.

### D-004 Arrival in Johto: the Kanto champion is a stranger there
- **Status:** Active (2026-09-08 onwards)
- **Decision:** After the Kanto league Oak asks the player to his lab and
  hands over the GS Ball for Elm (`VAR_JOHTO_HANDOVER`: 0 nothing, 1 Oak
  asked, 2 GS Ball received, 3 delivered to Elm). The way to Johto leads
  through the gatehouse south of Route 23. In Johto nobody knows the player
  except Elm; texts that treated the player as a beginner or as a local were
  rewritten (signs give directions instead of tutorials). Oak is no longer
  at Mr. Pokemon's house; the Johto Pokedex extension comes from Oak right
  after the GS Ball. The adventure and the Nuzlocke start at Oak's Pokedex
  handover in Kanto.
- **Evidence:** 1602e8b729, 6b0d350e04, b01bc5bebb, e77afc248a,
  66c8c06d55, 567810fe2e, e88ed22ac8, 1c01993e43, c904a2d5ab, 9c25e8f5e1,
  3b9309c7f9, d862d25c3d, c7104b184e.

### D-005 Transition logic uses Origin Jade's own state, with catch-ups
- **Status:** Active (2026-09-16)
- **Rule:** Whatever depends on the Kanto -> Johto transition is bound to
  Origin Jade's own vars and flags (e.g. `VAR_JOHTO_ARRIVAL_STATE`,
  `FLAG_JOHTO_ARRIVAL_DONE`, `FLAG_RECEIVED_JOHTO_STARTER`), never to HnS
  states that are set in scenes Origin Jade skips (Mom's house in New Bark
  Town, the HnS game start). Every state change gets a catch-up for saves
  that are already past that point.
- **Evidence:** 198d3db26f, 9e076ee684, fca38d758e, 8613206dde, 112f8d25d8.

## Regions and progression

### D-006 Region rules follow the map section
- **Status:** Active
- **Decision:** The current region is determined at runtime from the map
  section (`GetCurrentRegion`, MAPSEC ranges), not from the build. Region
  rules hang on that: `KantoRulesApply`, `JohtoPermitsApply`,
  `HoennLicensesApply`. Example: Acro Bike tricks only in Hoenn.
- **Evidence:** 0bcda4eed1, 5eee70eda6, e86ff35706, 9163d7dd9f.

### D-007 Badges and titles per region
- **Status:** Active
- **Decision:**
  - Kanto badges are `FLAG_BADGE01_GET`-`FLAG_BADGE08_GET` (FRLG gyms).
  - Johto badges are the bitmask `VAR_JOHTO_BADGES` (`src/johto_badges.c`).
    The Johto gym scripts still set `FLAG_BADGE0x_GET` as well; in Johto
    those flags mean nothing, because the Kanto league set them long before.
  - Hoenn badges are `VAR_HOENN_BADGES` (`src/hoenn_badges.c`).
  - Titles: `FLAG_IS_KANTO_CHAMPION`, `FLAG_IS_JOHTO_CHAMPION`,
    `FLAG_IS_HOENN_CHAMPION`. `FLAG_SYS_GAME_CLEAR` is first set by the Kanto
    league. `FLAG_IS_CHAMPION` is a legacy flag (set by the Johto and Hoenn
    halls of fame) - do not use it for Kanto or Johto logic.
- **Evidence:** f5aa45302b, 20ceec5a1e, 161ede4b96, 9f4cf4bb86.

### D-008 Field moves per region
- **Status:** Active
- **Decision:** Kanto uses the FRLG badge thresholds (Flash 1, Cut 2, Fly 3,
  Strength 4, Surf 5, Rock Smash 6, Waterfall 7). Johto uses permits
  ("Befugnis", `VAR_JOHTO_PERMITS`) handed out by the Johto gym leaders
  (Falkner Rock Smash, Bugsy Cut, Whitney Strength, Morty Surf, Pryce Dive,
  Clair Waterfall). Hoenn uses licenses ("Erlaubnis"). Fly and Flash are not
  locked in Johto and Hoenn. Routes 26, 27 and the Tohjo Falls are exempt
  from the permits: they are walked twice, the first time on arrival.
- **Evidence:** 0bcda4eed1, c569114c6b, 4f711ce15d, f7ec752555,
  71301e75a1, 9c9eac68df, cf857f4e0e.

### D-009 The gatehouse south of Route 23 (four-way junction)
- **Status:** Active
- **Decision:** `ReceptionGate_hns` connects east to Kanto (Route 22 gate,
  needs all eight Kanto badges), south to Johto (opens with
  `FLAG_SYS_GAME_CLEAR`, i.e. after the Kanto league), west to Mt. Silver
  (opens only with `FLAG_IS_JOHTO_CHAMPION` - Red is level 77-93) and north
  to the league (D-010). Each check has its own temp var, so passing one
  does not switch off the others for the rest of the visit. HnS's Black Belt
  in the west corridor steps aside with the Johto title as well (HnS hid him
  with Oak's permission in its retired Kanto).
- **Evidence:** 49ab1eff8b, 4e687ebd9b, 9f4cf4bb86, 1391e9d479,
  4cd0b47231, review 2026-10-09 (one temp var per check), review
  2026-10-11 (Black Belt).

### D-010 The league changes after the eighth Johto badge and the legendary event
- **Status:** Active (2026-10-10 and 2026-10-11).
  Supersedes "Victory Road of HnS retired, the FRLG Victory Road replaces
  it" from 4e687ebd9b.
- **Decision:** Until the league has changed, the gatehouse north exit
  leads to Kanto's league (Route 23, FRLG Victory Road) - training against
  the Kanto league is fine. The league changes once the player holds all
  eight Johto badges and has finished the legendary event at the Ecruteak
  theater (HnS's prerequisite). From then on Kanto's league is gone for
  good:
  - the north exit leads to Johto's Victory Road (`VictoryRoadKanto_*_hns`,
    active again) and on to Johto's league (`Route23_hns`,
    `IndigoPlateau_hns`);
  - the door on Kanto's Indigo Plateau (`IndigoPlateau_Exterior_Frlg`, the
    Fly target) leads into Johto's league center instead of Kanto's;
  - should a whiteout still bring the player into Kanto's league center
    (last heal point), the guard blocks its Elite Four door with FRLG's own
    "closed" line.
  Both Victory Roads stay: each fits its chapter (Kanto: Moltres, Kanto
  levels; Johto: Silver's last battle, TM Earthquake, TM Dark Pulse,
  scaling 65-80). Kanto's Route 23 and Victory Road stay reachable from the
  plateau's stairs, so nothing there becomes missable.
- **Story:** the league has changed, as in Gold/Silver: Lance is champion,
  Koga has joined the Elite Four, Lorelei and Agatha are gone. The in-game
  announcement is still to be written.
- **Rules / code:** `PokemonLeague_EventScript_CheckLeagueChanged`
  (`data/scripts/pokemon_league.inc`) is the one condition. The north door
  warps and the plateau door warp are `MAP_DYNAMIC`; their targets are set on
  map load and on resume (`ReceptionGate_EventScript_SetNorthWarp`,
  `IndigoPlateau_Exterior_EventScript_SetDoorWarp`). Johto's center leaves
  through its own door onto `IndigoPlateau_hns` (same layout). HnS's
  checkpoint at the south entrance (`ReceptionGate_Trigger`) is no longer
  used: in Origin Jade that entrance is the way home from Johto to Kanto and
  must stay open. The legendary-event check now guards the north exit for
  players with all eight Johto badges (`ReceptionGate_EventScript_LeagueCheck`).
  Silver's battle on Johto's Victory Road is armed the first time the
  gatehouse is entered after the change (`VAR_ROUTE27_STATE` 1 -> 2). A
  player who flies to the plateau and takes the door skips Johto's Victory
  Road and Silver's last battle; both stay available on foot later.
- **Evidence:** decisions 2026-10-10 and 2026-10-11; e900a95bad (Routes
  26/27 are walked twice - "on the way back to Johto's league"); 9be851b978
  (Johto trainer stage 5 "Victory Road and Indigo Plateau").

## Balancing

### D-011 Kanto: hand-set level ladder up to 52
- **Status:** Active
- **Decision:** Kanto's levels are set by hand and end with the champion at
  52; legendaries at most 40. Teams rise monotonically, at most two levels
  below the ace; route trainers sit 3-5 levels below the next boss. The
  Exp. Share is on from the start and the level band is tuned for it
  (`B_SPLIT_EXP` Gen 5). Obedience for traded Pokemon follows the number of
  Kanto badges (10, then +5 per badge, 50 with eight). Kanto's Elite Four
  rematch teams are also capped at 52.
- **Evidence:** b20f555d4d, 20fa75b584, 1662b679fc, 2f349b5ce2, af10c86033.

### D-012 Johto and Hoenn: dynamic level scaling
- **Status:** Active
- **Decision:** Johto and Hoenn scale to the player (`src/level_scaling.c`,
  `include/config/johto_scaling.h`): Johto corridors 45-80 (Mt. Silver
  70-90, Red unscaled), trainers anchor -3..+2, bosses +3 (Hoenn +5, it is
  the final region). The arrival corridor has the full band. Johto's gym
  leaders have six Pokemon; route trainers at least three
  (`tools/fill_johto_parties.py`: trainer class beats the local wild pool,
  duplicate a Pokemon rather than break the class).
- **Evidence:** e900a95bad, 8f0e70b65c, 1685acfbc7, e1fde77aa4,
  cf857f4e0e, f549506494, e936f02c84, c239d59e43, 20a176b3af, c16d35c5aa.

### D-013 Kanto is complete without trading
- **Status:** Active
- **Decision:** All 185 species of the Gen-1 families are obtainable in
  Kanto without link trades: both fossils at Mt. Moon, both Hitmons at the
  dojo, evolution items placed in Kanto, the unchosen starters in the wild
  (5 %), two-slot day care with breeding, extra Game Corner prizes. Day and
  night replace the FireRed/LeafGreen version split. Overworld Pokemon show
  what can be caught on a map (next to, not on, the encounter tiles).
- **Evidence:** 71a79b3a14, ff6d47ca45, ead606af10, 7aacaa2699,
  d8f26d241e, d0e2cc9ec4, 2d0e6a62af, 00da4d2a7a, 535f47948b, 5578b2caee.

### D-014 HM handovers in Johto never leave the player empty-handed
- **Status:** Active
- **Decision:** A player from Kanto already owns most HMs. Every HM handover
  checks for the HM; if it is already owned, there is a different reward
  with an in-world reason - never "then I have nothing for you". Exploring
  has to pay off.
- **Exception:** Waterfall and Whirlpool do not exist in Origin Jade's Kanto
  (no active Kanto map hands them out). They stay regular Johto finds: the
  ball on the Ice Path holds Waterfall, and Lance hands over Whirlpool in the
  Rocket Hideout. Waterfall can only be used with Clair's permit (D-008).
- **Evidence:** 09aac39e14, 5b0269166d, f9bd3e5021 (Waterfall, Whirlpool).

### D-015 Kanto's Elite Four rematch after the Kanto title
- **Status:** Active (2026-10-10)
- **Decision:** After the Kanto title the Kanto Elite Four use their
  rematch teams, matching the rematch texts that already showed. FRLG picked
  the teams by `FLAG_IS_CHAMPION`, which only FRLG's postgame (One Island)
  sets. The rematches end when the league changes (D-010).
- **Evidence:** review 2026-10-09, decided 2026-10-10.

## Data, saves and maps (technical conventions)

### D-016 Flags and vars
- **Status:** Active
- **Rules:**
  - New Origin Jade flags and vars come only from
    `include/constants/flags_origin_jade.h` and `vars_origin_jade.h`
    (stored in SaveBlock3, sections per region with reserves).
  - Existing numbers are never renumbered. When two names collide, the
    Hoenn / Origin Jade side moves; HnS keeps its numbers, so HnS merges
    stay conflict-free. If both regions use the same *name*, the Hoenn
    scripts get a name of their own (example: Devon's fossil revival,
    `VAR_HOENN_FOSSIL_RESURRECTION_STATE`).
  - Run `tools/check_flags.py` after every HnS merge. The compiler does not
    report two names on one number.
  - Hidden-item flags must lie inside the 13-bit window above
    `FLAG_HIDDEN_ITEMS_START`; the FRLG flag block therefore sits at 0x1000.
    FRLG trainer flags are redirected by `TrainerIdToFlagId`.
  - `FLAG_TEMP_x` on cut trees and boulders is correct (hidden for the
    current visit); hidden items need real flags.
- **Evidence:** 9a12676bc2, c2cbd316ad, 5dbd22cc65, 5bda779144,
  f89324b8d2, 42058c2f69, 2e9792740c.

### D-017 Saves and migrations
- **Status:** Active
- **Rules:** The save layout freezes with the release; until then it may
  grow deliberately (2cbf85903d). One-time migrations of Origin Jade run in
  `LoadGameSave` (`src/save.c`) and are keyed to a flag from the Origin Jade
  block, which new games set right away - never through `SAVE_VERSION`:
  that number belongs to HnS upstream and is bumped there.
- **Evidence:** 2cbf85903d, 9635b02081, 2026-10-10 (Johto starter var).

### D-018 Maps and layouts
- **Status:** Active
- **Rules:**
  - Never remove a map from `map_groups.json` or a layout from
    `layouts.json`; append new ones at the end. Map and layout indices are
    stored in save files.
  - Retire content with a `game_version` other than `"hns"` - in **both**
    `map.json` and `layouts.json`. `mapjson` then emits NULL silently,
    without a build error.
  - `layout_version` must match the tilesets' attribute width (`frlg`
    32-bit, `hns` 16-bit). Porymap may rewrite attribute files in the wrong
    width.
  - `data/event_scripts.s` is a hand-maintained include list.
  - Local IDs must be unique per map; Porymap may drop `local_id` fields or
    add stub entries to `region_map_sections.json`.
- **Evidence:** 7c35866292, fcb615fbb6, 68c800eb29, 36c1841e2c,
  c95ae0fbcb, 97f2d54743, 4d57e6d6dc, 6f8f66dd8c, 35b22a81e7, e14f493887.

### D-019 Retired and locked content
- **Status:** Active
- **Decision:** HnS's own Kanto maps are retired (`hns_kanto_retired`); the
  FRLG Kanto maps are used. The Sevii Islands are retired, reversibly
  (`frlg_sevii_retired`); everything that would lead there is disabled (Bill
  after Blaine, the Indigo Plateau guard's Sevii branch). The Sinjoh content
  is locked by `SINJOH_CONTENT_AVAILABLE` in `include/config/general.h`.
- **Evidence:** 752b880dee, 67c1384191, 82f533ac08, 020c34f826,
  84e198c40c, ba8f5e9168, review 2026-10-09.

## Language and upstream

### D-020 Language, comments and game text
- **Status:** Active
- **Rules:**
  - Comments are English (since 2026-10-09).
  - The German build never shows English game text. Changes to game text
    go into the `#if GERMAN` branch; the English branch is only adapted to
    match.
  - German texts follow the official German games (source cascade in
    1767d31fe6). Real umlauts and ß, no "ae/oe/ue/ss" substitutes. Title
    case, no all-caps.
  - Pixel limits: text box 208 px, PokeNav call box 192 px
    (`check_pokenav_text.py`).
  - Debug menu texts stay English.
- **Evidence:** 1767d31fe6, 6736e18718, 61504582b3, 652123e252,
  c7104b184e, d1a2067c84.

### D-021 Upstream policy
- **Status:** Active
- **Decision:** HnS (pokemonHnS-backup) is taken over as a three-way diff,
  because the branches share no history. In conflicts: translations and
  Origin Jade's design stay ours, upstream wins where the build needs it,
  otherwise combine. From pokeemerald-expansion, individual fixes are ported
  (with a comment naming the upstream PR); a merge of 1.16/1.17 is not
  planned for now (large incompatible refactors).
- **Evidence:** 007b3968fc, 4784435413, b0a460c224, 6a6a4fcaec,
  c3c361d4b4, cc58e0c648, review 2026-10-09.

### D-022 Moltres exists once, in Kanto
- **Status:** Active (2026-10-11)
- **Decision:** Moltres can only be met on Kanto's Victory Road 4F
  (`VictoryRoad_4F_Frlg`, level 40, `FLAG_HIDE_MOLTRES_KANTO`; D-013).
  HnS's second Moltres on Mt. Silver (`MtSilver_1F_MoltresRoom_hns`, level
  50, `FLAG_HIDE_MOLTRES`) is removed - otherwise it could be caught twice.
  Its object stays in map.json (so old saves made in the room find their
  template) but never spawns and never battles. Kanto's Victory Road stays
  reachable after the league change (D-010), so Moltres cannot be missed by
  the change; knocking it out removes it for good, as with FRLG's birds.
- **Evidence:** decision 2026-10-11.

---

## Planned, not built yet

- **P-001** The son of the woman who now lives in the New Bark Town house is
  meant to appear later as a trainer (e77afc248a).
- **P-002** The wall clock tile in the Pallet Town house is still missing;
  `PalletTown_PlayersHouse_2F_EventScript_WallClock` waits for it
  (848361320c, 9e22901516).
- **P-003** Obedience limits of their own for Johto ("in Johto eigene
  Grenzen", af10c86033). Until then the table ends at level 50 after the
  eighth Kanto badge.
- **P-004** Baoba's Safari Zone call should come back through his own quest
  line (5f794c19fd, 0bee0d524b).
- **P-005** Mom's three call texts still describe Hoenn milestones and should
  be re-hung for Kanto/Johto.

## Open questions

- **O-001** Resolved 2026-10-11: the league has changed (D-010). Fly to
  "Indigo Plateau" keeps landing at Kanto's plateau; after the change its
  door leads into Johto's league.
- **O-002** Hoenn Ticket: no source in the game except the debug menu. The
  story after the ticket exists but does not fit the earlier system; it
  will be redesigned (2026-10-10). Do not implement in the meantime.
- **O-003** Magnet Train and the S.S. Aqua phase at Vermilion: the Machine
  Part / Pass only exist on retired maps, and `FLAG_HIDE_VERMILION_SS_AQUA`
  is never cleared.
- **O-004** Legendaries return after Johto's second Hall of Fame
  (`SetGameClearFlags` clears the hide flags that the Kanto maps use too).
- **O-005** Goldenrod's first-visit "flag heap" resets flags Kanto already set
  (Bill's PC, radio, Eevee).
- **O-006** The two Battle Frontiers (Emerald and HnS) share all progress
  flags.
- **O-007** Mt. Moon B3F: the three item balls all contain an Antidote
  (copied from B2F).
- **O-008** Shiny Charm / Oval Charm currently have no source.
- **O-009** Enabling Sinjoh also needs the Gen 4+ and regional forms in
  `species_enabled.h`.
- **O-010** Three Johto berry trees share save slots with Hoenn trees (noted
  by HnS as "fix after release").
- **O-011** Kanto starter preview: the preview can roll a shiny, but Oak's lab
  hands out a regular Pokemon (the preview rolls for `VAR_STARTER_MON` 0,
  which Oak's lab only sets after the handover).
- **O-012** Text debt: 172 Johto texts without a German branch (346072a202);
  4951 German HnS lines wider than 216 px (652123e252).
- **O-013** Johto's league is single-run: after the first Johto title a Black
  Belt (`FLAG_HIDE_LEAGUE_BLACKBELT`) stands on the only tile in front of the
  Elite Four door of `IndigoPlateau_PokemonCenter_hns`; only the retired HnS
  Viridian gym hid him again. Reopening would also bring HnS's second-run
  texts ("Der Kanto-liga!", "Kanto-champion") and `SetGameClearFlags`
  (O-004) into play.
- **O-014** HnS content that never appears: Silver's daily battle in Johto's
  league center (`FLAG_HIDE_INDIGO_PLATEAU_SILVER`), Clair's rematch in the
  Dragon's Den (`FLAG_HIDE_DEN_CLAIR`) and Janine in the gatehouse
  (`FLAG_HIDE_ROUTE22_JANINE`) - their flags are only cleared on retired
  maps, in the debug menu or in the S.S. Aqua branch for players without
  the Kanto title (unreachable). Canon options after the league change: Blue as
  Viridian gym leader (the FRLG gym stays empty after Giovanni), Janine in
  Fuchsia.
- **O-015** Text slips found 2026-10-11: the gatehouse's
  `ReceptionGate_Text_LeagueDenied` writes "duerfen"/"Siegesstrasse"; Kanto's
  Lance says "Es ist... {PLAYER}! Auch er hat die Top Vier besiegt!" where
  the rival is meant; Will says "Elite Vier"; typos in Johto's
  `IndigoPlateau_EventScript_ShigyNinja` text; Route 28 has English text
  only; Johto's Oak says "Es ist lange her" after the Johto title although he
  handed over the GS Ball shortly before; the ship is "M.S. Anne" in FRLG's
  German texts but "S.S. Anne" in Vermilion's port texts
  (`VermilionCity_PortInside_*`) and on the region map.

## Superseded decisions (kept for the record)

| Old decision | Where | Replaced by |
|---|---|---|
| After Johto was visited, the player wakes up in New Bark Town after a league | a740935891, `GameClear` | D-002 (2026-10-10) |
| HnS's Victory Road maps retired, the FRLG Victory Road replaces them | 4e687ebd9b | D-010 (2026-10-10) |
| Daisy hands over the PokeGear | a5475129c4 | Mom gives the PokeCom (515df62894) |
| Field moves in Johto follow the badge flags | HnS / 0bcda4eed1 | Johto permits (71301e75a1) |
| Mt. Silver opens with `FLAG_SYS_GAME_CLEAR` | HnS | `FLAG_IS_JOHTO_CHAMPION` (4cd0b47231) |
| `FLAG_IS_CHAMPION` is the Johto title | 4d33757ced | `FLAG_IS_JOHTO_CHAMPION` (f5aa45302b) |
| Johto starts in Mom's house in New Bark Town | HnS | D-004 |
| A second Moltres on Mt. Silver | HnS | D-022 (2026-10-11) |
