#!/usr/bin/env python3
"""Convert a pokered/pokecrystal-style Gen 1 GBS song to this project's format.

The converter intentionally handles the small command vocabulary used by the
Gen 1 music sources rather than applying an unrestricted text replacement.
The Gen 1 perfect-pitch toggle is converted to this project's equivalent
``pitch_offset 1`` command. Unsupported commands are reported and omitted
only when --allow-unsupported is supplied.
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path


CHANNEL_LABEL = re.compile(r"^Music_[A-Za-z0-9_]+_Ch([1-4])::$")
LOCAL_LABEL = re.compile(r"^\.(\w+):$")
NOTE_NAMES = {
    "C#": "Cs",
    "D#": "Ds",
    "F#": "Fs",
    "G#": "Gs",
    "A#": "As",
}
SUPPORTED_COMMANDS = {
    "duty_cycle",
    "note",
    "note_type",
    "octave",
    "rest",
    "sound_loop",
    "tempo",
    "vibrato",
    "volume",
}


def qualify_local_references(text: str, prefix: str) -> str:
    """Make Gen 1 local labels valid global project labels."""
    text = re.sub(r"(?<![\w.])\.([A-Za-z_]\w*)", rf"{prefix}.\1", text)
    return text


def convert(source: str, song_name: str, allow_unsupported: bool) -> tuple[str, list[str]]:
    lines = source.splitlines()
    channels: dict[int, str] = {}
    current_channel: int | None = None
    output: list[str] = [
        '\t.include "asm/macros.inc"',
        "",
        "\t.section .rodata",
        "\t.align 1",
        "",
    ]
    warnings: list[str] = []
    perfect_pitch_enabled: dict[int, bool] = {}

    for line_number, original in enumerate(lines, 1):
        stripped = original.strip()
        if not stripped:
            output.append("")
            continue
        if stripped.startswith(";"):
            output.append("\t@" + stripped[1:])
            continue

        channel_match = CHANNEL_LABEL.match(stripped)
        if channel_match:
            current_channel = int(channel_match.group(1))
            prefix = f"gbs_{song_name}_Ch{current_channel}"
            channels[current_channel] = prefix
            output.append(f"{prefix}:")
            output.append(f"\tgbs_switch {current_channel - 1}")
            continue

        local_match = LOCAL_LABEL.match(stripped)
        if local_match:
            if current_channel is None:
                raise ValueError(f"line {line_number}: local label outside a channel")
            prefix = channels[current_channel]
            output.append(f"{prefix}.{local_match.group(1)}:")
            continue

        command_match = re.match(r"([A-Za-z_][A-Za-z0-9_]*)\b(.*)", stripped)
        if command_match:
            command, arguments = command_match.groups()
            if command == "toggle_perfect_pitch":
                if perfect_pitch_enabled.get(current_channel, False):
                    message = (
                        f"line {line_number}: a second toggle_perfect_pitch would "
                        "disable the offset, which this project format cannot represent"
                    )
                    if not allow_unsupported:
                        raise ValueError(message + "; convert this channel manually")
                    warnings.append(message)
                    output.append(f"\t@ {message}")
                    continue
                perfect_pitch_enabled[current_channel] = True
                output.append("\tpitch_offset 1\t@ Gen 1 perfect pitch")
                continue
            if command not in SUPPORTED_COMMANDS:
                raise ValueError(f"line {line_number}: unsupported command {command!r}")
            if current_channel is None:
                raise ValueError(f"line {line_number}: command outside a channel")
            prefix = channels[current_channel]
            arguments = qualify_local_references(arguments, prefix)
            for old, new in NOTE_NAMES.items():
                arguments = re.sub(rf"(?<![A-Za-z]){re.escape(old)}(?![A-Za-z])", new, arguments)
            output.append(f"\t{command}{arguments}")
            continue

        output.append("\t" + qualify_local_references(stripped, channels[current_channel]))

    if not channels:
        raise ValueError("input contains no Music_*_ChN channel labels")

    output.extend(
        [
            "",
            "\t.align 4",
            f"\t.global gbs_{song_name}_Header",
            f"gbs_{song_name}_Header:",
            f"\t.byte {len(channels)}\t@ NumTrks",
            "\t.byte 0\t@ NumBlks",
            "\t.byte 0\t@ Priority",
            "\t.byte 0\t@ Reverb",
            "",
            "\t.int voicegroup000",
            "",
        ]
    )
    output.extend(f"\t.int {channels[channel]}" for channel in sorted(channels))
    return "\n".join(output) + "\n", warnings


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path, help="Gen 1 music source (.asm)")
    parser.add_argument("output", type=Path, help="project-format output (.s)")
    parser.add_argument(
        "--song-name",
        default="trainerbattle",
        help="name used for gbs_<name> labels (default: trainerbattle)",
    )
    parser.add_argument(
        "--allow-unsupported",
        action="store_true",
        help="omit unsupported commands after printing warnings",
    )
    args = parser.parse_args()

    try:
        converted, warnings = convert(
            args.input.read_text(encoding="utf-8"),
            args.song_name,
            args.allow_unsupported,
        )
    except (OSError, ValueError) as error:
        print(f"error: {error}", file=sys.stderr)
        return 1

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(converted, encoding="utf-8")
    for warning in warnings:
        print(f"warning: {warning}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
