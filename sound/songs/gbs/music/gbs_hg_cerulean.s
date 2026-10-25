	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_hg_cerulean_Ch1:
	gbs_switch 0
	tempo 148
	volume 7, 7
	duty_cycle 3
	vibrato 8, 3, 2
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 6
	rest 8
	octave 3
	note E_, 2
	note Ds, 2
	note Cs, 2
	note C_, 2
	octave 2
	note B_, 2
	rest 14
gbs_hg_cerulean_Ch1.mainloop:
	octave 3
	note B_, 4
	octave 4
	note Cs, 2
	note Ds, 1
	note D_, 1
	note Cs, 4
	octave 3
	note B_, 4
	note Gs, 8
	note E_, 8
	note A_, 4
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note B_, 2
	octave 4
	note Cs, 2
	rest 16
	note Cs, 4
	octave 3
	note B_, 2
	octave 4
	note Cs, 1
	note Ds, 1
	note Cs, 4
	octave 3
	note B_, 4
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	rest 3
	note Gs, 8
	note B_, 4
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note B_, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	rest 2
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	note Fs, 2
	note Gs, 2
	note A_, 2
	rest 2
	octave 4
	note Fs, 4
	note Ds, 4
	octave 3
	note E_, 2
	rest 4
	note Fs, 2
	rest 4
	note A_, 2
	rest 2
	note B_, 2
	rest 16
	rest 16
	rest 14
	note E_, 16
	note Fs, 8
	note Gs, 4
	note Fs, 4
	note E_, 2
	rest 14
	sound_loop 0, gbs_hg_cerulean_Ch1.mainloop

gbs_hg_cerulean_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 8, 2, 3
	note_type 12, 12, 2
	octave 4
	note E_, 2
	note Ds, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 6
	note_type 12, 12, 2
	duty_cycle 2
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
gbs_hg_cerulean_Ch2.mainloop:
	note_type 12, 10, 6
	note Gs, 6
	note_type 12, 12, 2
	note A_, 1
	note Gs, 1
	note_type 12, 12, 4
	note Fs, 14
	note_type 12, 12, 2
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
	note_type 12, 12, 4
	note Gs, 6
	note_type 12, 12, 2
	note E_, 1
	note Gs, 1
	note_type 12, 12, 5
	note B_, 14
	note_type 12, 12, 2
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
	note_type 12, 10, 6
	note Gs, 6
	note_type 12, 12, 2
	note A_, 1
	note Gs, 1
	note_type 12, 12, 4
	note Fs, 8
	note_type 12, 10, 1
	duty_cycle 1
	octave 3
	note Gs, 1
	note Gs, 1
	note Gs, 1
	note Gs, 1
	note Gs, 1
	rest 1
	note_type 12, 12, 2
	duty_cycle 2
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
	note_type 12, 12, 4
	note Gs, 6
	note E_, 1
	note Gs, 1
	note_type 12, 12, 6
	note B_, 8
	note_type 12, 12, 2
	note Cs, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 1
	note Ds, 1
	note E_, 4
	note_type 12, 12, 7
	note Gs, 4
	note E_, 4
	note_type 12, 12, 2
	note Ds, 1
	note Cs, 1
	note Ds, 1
	note E_, 1
	note Fs, 4
	note_type 12, 12, 7
	note B_, 4
	note Fs, 4
	note_type 12, 12, 2
	note Cs, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 1
	note Ds, 1
	note E_, 2
	note E_, 1
	note Ds, 1
	note E_, 1
	note Fs, 1
	note Gs, 2
	note Gs, 1
	note A_, 1
	note Gs, 1
	note A_, 1
	note B_, 1
	note Fs, 1
	note Ds, 1
	note Cs, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 1
	note Ds, 1
	note Fs, 1
	note_type 12, 12, 2
	note B_, 8
	note_type 12, 11, 7
	octave 3
	note E_, 8
	octave 2
	note B_, 4
	octave 3
	note Fs, 4
	note Gs, 4
	note A_, 4
	note B_, 8
	note B_, 8
	note Gs, 4
	octave 4
	note Ds, 4
	note Cs, 4
	note Ds, 4
	note E_, 2
	note Ds, 2
	note Cs, 2
	note Ds, 2
	note_type 12, 12, 2
	note E_, 6
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
	sound_loop 0, gbs_hg_cerulean_Ch2.mainloop

gbs_hg_cerulean_Ch3:
	gbs_switch 2
	note_type 12, 1, 1
	rest 16
	octave 4
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
gbs_hg_cerulean_Ch3.mainloop:
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	rest 2
	note E_, 4
	note Gs, 4
	note Fs, 2
	note A_, 2
	note Fs, 2
	rest 2
	note Fs, 4
	note A_, 4
	note Cs, 2
	rest 4
	note E_, 2
	rest 4
	note Gs, 2
	note A_, 2
	note B_, 2
	rest 8
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	sound_loop 0, gbs_hg_cerulean_Ch3.mainloop

	.align 4
	.global gbs_hg_cerulean_Header
gbs_hg_cerulean_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_hg_cerulean_Ch1
	.int gbs_hg_cerulean_Ch2
	.int gbs_hg_cerulean_Ch3
