#!/usr/bin/env python3
"""Render mapped Gen 1/Gen 2 music pairs for quick listening.

This previews the GBS source directly. It does not build or run the game. The
waveform is an approximation produced by tools/mid2gbs/gbs_synth.py; use it to
compare melodies and arrangements, not to certify final GBA mixing.

Requirements:
    pip install -r tools/mid2gbs/requirements.txt

Examples:
    python3 tools/music_compare.py --list
    python3 tools/music_compare.py --pair gbs_routes1
    python3 tools/music_compare.py --all
    python3 tools/music_compare.py --all --open
"""

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
    raise SystemExit(
        "numpy is required; install with "
        "pip install -r tools/mid2gbs/requirements.txt"
    ) from error

TOOLS = Path(__file__).resolve().parent
ROOT = TOOLS.parent
MUSIC = ROOT / "sound/songs/gbs/music"
CONVERTED = MUSIC / "gen1_converted"
SYNTH_PATH = TOOLS / "mid2gbs"
sys.path.insert(0, str(SYNTH_PATH))
import gbs_synth  # noqa: E402


PAIR_RE = re.compile(
    r"\|\s*`gen1_converted/gbs_([^`]+)\.s`\s*\|\s*`gbs_([^`]+)\.s`\s*\|"
)
NOTE_NAMES = {
    "C_": 0,
    "Cs": 1,
    "D_": 2,
    "Ds": 3,
    "E_": 4,
    "F_": 5,
    "Fs": 6,
    "G_": 7,
    "Gs": 8,
    "A_": 9,
    "As": 10,
    "B_": 11,
}
CHANNEL_RE = re.compile(r"^gbs_[A-Za-z0-9_]+_Ch([1-4]):")
NOTE_RE = re.compile(r"^\s*note\s+([A-Za-z_]+),\s*(\d+)")
REST_RE = re.compile(r"^\s*rest\s+(\d+)")


def load_pairs() -> list[tuple[str, str, str]]:
    mapping = ROOT / "docs/gen1_gen2_kanto_music_mapping.md"
    pairs: list[tuple[str, str, str]] = []
    category = "Uncategorized"
    for line in mapping.read_text(encoding="utf-8").splitlines():
        if line.startswith("## "):
            category = line[3:].strip()
        match = PAIR_RE.search(line)
        if match:
            pairs.append((category, match.group(1), match.group(2)))
    return pairs


def source_events(path: Path, duration_limit: float) -> dict[str, list[tuple[float, float, int, float]]]:
    """Interpret the audible note stream and GBS call/loop control flow."""
    channels: dict[str, list[str]] = {}
    channel = None
    for line in path.read_text(encoding="utf-8").splitlines():
        match = CHANNEL_RE.match(line.strip())
        if match:
            channel = f"Ch{match.group(1)}"
            channels[channel] = []
        elif channel:
            channels[channel].append(line)

    result: dict[str, list[tuple[float, float, int, float]]] = {}
    for name, lines in channels.items():
        labels = {
            line.strip()[:-1]: index
            for index, line in enumerate(lines)
            if line.strip().endswith(":")
        }
        entry = next(
            (label for label in labels if label.endswith(".mainloop")),
            next(iter(labels), None),
        )
        if entry is None:
            result[name] = []
            continue
        octave = 4
        tempo = 120.0
        unit = 12
        volume = 12
        fade = 0
        duty = 2
        vibrato = 0
        offset = 0
        events: list[tuple[float, float, int, float]] = []
        cursor = 0.0
        max_steps = 100000

        def note_seconds(length: int) -> float:
            # CalculateNoteLength() stores (unit * length * tempo) as a
            # 16-bit fixed-point frame count. The high byte is consumed at
            # the 60 Hz music update rate, so 256 * 60 converts it to seconds.
            return tempo * unit * length / (256.0 * 60.0)

        def execute(label: str) -> None:
            nonlocal cursor, octave, tempo, unit, volume, fade, duty, vibrato, offset
            if cursor >= duration_limit:
                return
            index = labels[label] + 1
            steps = 0
            while index < len(lines) and cursor < duration_limit and steps < max_steps:
                steps += 1
                stripped = lines[index].split("@", 1)[0].strip()
                if stripped.endswith(":"):
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
                        if len(fields) >= 4:
                            fade = int(fields[3])
                    elif command == "octave":
                        octave = int(fields[1])
                    elif command == "volume":
                        volume = max(int(fields[1]), int(fields[2]))
                    elif command == "duty_cycle":
                        duty = int(fields[1])
                    elif command == "vibrato":
                        vibrato = int(fields[2])
                    elif command == "pitch_offset":
                        offset = int(fields[1])
                    elif command in {"sound_call", "sound_jump", "sound_loop"}:
                        target = fields[-1]
                        if target in labels:
                            count = 1 if command != "sound_loop" else int(fields[1])
                            if count == 0:
                                while cursor < duration_limit:
                                    execute(target)
                            else:
                                for _ in range(count):
                                    execute(target)
                            if command == "sound_jump":
                                break
                    elif command == "sound_ret":
                        break
                    elif command == "note" and len(fields) >= 3:
                        pitch = NOTE_NAMES[fields[1]] + 12 * (octave + 1) + offset
                        seconds = note_seconds(int(fields[2]))
                        events.append((cursor, seconds, pitch, volume))
                        cursor += seconds
                    elif command == "drum_note" and len(fields) >= 3:
                        seconds = note_seconds(int(fields[2]))
                        events.append((cursor, seconds, 36, volume))
                        cursor += seconds
                    elif command == "rest":
                        cursor += note_seconds(int(fields[1]))
                except (KeyError, ValueError, IndexError):
                    pass
                index += 1
        execute(entry)
        result[name] = [(s, d, p, v) for s, d, p, v in events if s < duration_limit]
    return result


def render(path: Path, duration: float) -> np.ndarray:
    events = source_events(path, duration)
    return gbs_synth.render(events, master_scale=0.7)


def write_wav(path: Path, samples: np.ndarray) -> None:
    pcm = np.clip(samples * 32767, -32768, 32767).astype("<i2")
    with wave.open(str(path), "wb") as output:
        output.setnchannels(1)
        output.setsampwidth(2)
        output.setframerate(gbs_synth.SAMPLE_RATE)
        output.writeframes(pcm.tobytes())


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--all", action="store_true", help="render every mapped pair")
    parser.add_argument("--pair", action="append", help="Gen 1 basename, e.g. gbs_routes1")
    parser.add_argument("--list", action="store_true", help="list available pairs")
    parser.add_argument("--duration", type=float, default=60.0)
    parser.add_argument("--output", type=Path, default=ROOT / "build/music_compare")
    parser.add_argument("--open", action="store_true", help="open the generated HTML playlist")
    args = parser.parse_args()

    pairs = load_pairs()
    if args.list:
        for category, gen1, gen2 in pairs:
            print(f"{category:8} {gen1:28} -> {gen2}")
        return 0
    selected = pairs if args.all or not args.pair else [
        pair for pair in pairs if pair[1] in {name.removeprefix("gbs_") for name in args.pair}
    ]
    if not selected:
        parser.error("no pairs selected; use --list, --all, or --pair NAME")

    args.output.mkdir(parents=True, exist_ok=True)
    rows: list[str] = []
    for category, gen1, gen2 in selected:
        gen1_path = CONVERTED / f"gbs_{gen1}.s"
        gen2_path = MUSIC / f"gbs_{gen2}.s"
        if not gen1_path.exists() or not gen2_path.exists():
            print(f"skip missing source: {gen1_path} or {gen2_path}", file=sys.stderr)
            continue
        gen1_filename = f"{gen1}_gen1.wav"
        gen2_filename = f"{gen2}_gen2.wav"
        write_wav(args.output / gen1_filename, render(gen1_path, args.duration))
        write_wav(args.output / gen2_filename, render(gen2_path, args.duration))
        rows.append(
            f"<h2>{html.escape(category)}: {html.escape(gen1)} vs {html.escape(gen2)}</h2>"
            f"<p>Gen 1 converted: <audio controls preload='none' src='{html.escape(gen1_filename)}'></audio></p>"
            f"<p>Gen 2: <audio controls preload='none' src='{html.escape(gen2_filename)}'></audio></p>"
        )
        print(args.output / gen1_filename)
        print(args.output / gen2_filename)

    playlist = args.output / "index.html"
    playlist.write_text(
        "<!doctype html><meta charset='utf-8'><title>Kanto music comparison</title>"
        "<p>Each clip is Gen 1 converted, one second silence, then Gen 2.</p>"
        + "\n".join(rows),
        encoding="utf-8",
    )
    print(playlist)
    if args.open:
        subprocess.Popen(["xdg-open", str(playlist)])
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
