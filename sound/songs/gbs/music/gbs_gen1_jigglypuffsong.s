	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_jigglypuffsong_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	vibrato 8, 2, 4
	duty_cycle 2
	duty_cycle_pattern 2, 2, 1, 1
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 13, 6, 7
	octave 4
	note E_, 8
	note_type 12, 6, 7
	note B_, 2
	note Gs, 6
	note Fs, 8
	note Gs, 2
	note A_, 6
	note Gs, 8
	note Fs, 4
	note Gs, 4
	note E_, 10
	sound_ret

gbs_jigglypuffsong_Ch2:
	gbs_switch 1
	vibrato 5, 1, 5
	duty_cycle 2
	duty_cycle_pattern 0, 0, 2, 2
	note_type 12, 10, 7
	octave 4
	note E_, 8
	note B_, 2
	note Gs, 6
	note Fs, 8
	note Gs, 2
	note A_, 6
	note Gs, 8
	note Fs, 4
	note Gs, 4
	note E_, 10
	sound_ret

	.align 4
	.global gbs_jigglypuffsong_Header
gbs_jigglypuffsong_Header:
	.byte 2	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_jigglypuffsong_Ch1
	.int gbs_jigglypuffsong_Ch2
