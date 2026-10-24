	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_introbattle_Ch1:
	gbs_switch 0
	tempo 98
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 1
	rest 8
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note D_, 4
	note_type 12, 11, 1
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note Ds, 4
	note_type 12, 11, 1
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note D_, 4
	note_type 12, 11, 1
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 10, 0
	note As, 4
	note_type 12, 11, 1
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note D_, 4
	note_type 12, 11, 1
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 2, -1
	octave 3
	note G_, 4
	note_type 12, 11, 0
	note A_, 8
	octave 2
	note A_, 8
	note_type 12, 11, 7
	octave 3
	note F_, 8
	note_type 12, 4, -7
	octave 2
	note F_, 8
	note_type 12, 11, 1
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note D_, 4
	note_type 12, 11, 1
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note Ds, 4
	note_type 12, 11, 1
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note F_, 4
	note_type 12, 11, 1
	octave 2
	note A_, 2
	note A_, 2
	note_type 12, 11, 4
	octave 3
	note G_, 4
	note_type 12, 11, 0
	note Fs, 16
	note_type 12, 11, 1
	octave 4
	note D_, 16
	sound_ret

gbs_introbattle_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 8, 2, 5
	note_type 12, 12, 2
	rest 8
	octave 3
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	note A_, 4
	note_type 12, 12, 2
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	note As, 4
	note_type 12, 12, 2
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	note A_, 4
	note_type 12, 12, 2
	note D_, 2
	note D_, 2
	note_type 12, 11, 7
	note Cs, 4
	note_type 12, 12, 2
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	note A_, 4
	note_type 12, 12, 2
	octave 3
	note D_, 2
	note D_, 2
	note_type 12, 12, 7
	octave 4
	note Cs, 4
	note D_, 8
	octave 3
	note D_, 8
	octave 4
	note C_, 8
	octave 3
	note C_, 8
	note_type 12, 12, 2
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	note A_, 4
	note_type 12, 12, 2
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	note As, 4
	note_type 12, 12, 2
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	octave 4
	note C_, 4
	note_type 12, 12, 2
	octave 3
	note D_, 2
	note D_, 2
	note_type 12, 12, 5
	octave 4
	note Cs, 4
	note_type 12, 2, -7
	note D_, 16
	note_type 12, 12, 1
	octave 5
	note D_, 16
	sound_ret

gbs_introbattle_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	rest 8
	octave 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note As, 4
	note A_, 8
	note D_, 8
	note As, 8
	note D_, 8
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note As, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note As, 4
	note A_, 16
	note D_, 1
	rest 15
	sound_ret

gbs_introbattle_Ch4:
	gbs_switch 3
	drum_speed 6
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 1
	drum_note 17, 1
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 4
	drum_note 17, 4
	drum_note 17, 8
	drum_note 17, 4
	drum_note 17, 4
	drum_note 17, 8
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 4
	drum_note 17, 4
	drum_note 17, 8
	drum_note 17, 4
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 16
	drum_note 17, 16
	drum_note 17, 16
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 1
	drum_note 17, 1
	drum_note 17, 1
	drum_note 17, 1
	drum_note 17, 4
	drum_note 17, 4
	drum_note 17, 8
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 4
	drum_note 17, 4
	drum_note 17, 8
	drum_note 17, 4
	drum_note 17, 8
	drum_note 17, 4
	drum_note 17, 16
	drum_note 17, 16
	drum_note 17, 2
	rest 16
	rest 14
	sound_ret

	.align 4
	.global gbs_introbattle_Header
gbs_introbattle_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_introbattle_Ch1
	.int gbs_introbattle_Ch2
	.int gbs_introbattle_Ch3
	.int gbs_introbattle_Ch4
