	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_oakslab_Ch1:
	gbs_switch 0
	tempo 140
	volume 7, 7
	duty_cycle 3
	vibrato 16, 1, 2
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 3
	octave 2
	note B_, 1
	octave 3
	note Cs, 1
	note D_, 1
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
	note B_, 1
gbs_oakslab_Ch1.mainloop:
	octave 4
	note Cs, 4
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 4
	note Gs, 2
	note A_, 2
	note B_, 1
	rest 3
	note A_, 6
	note Gs, 1
	note B_, 1
	octave 4
	note Cs, 4
	octave 3
	note A_, 4
	note Gs, 2
	note A_, 2
	note Fs, 4
	note E_, 2
	note Fs, 2
	note Gs, 1
	rest 3
	note Fs, 8
	note E_, 4
	note A_, 6
	note E_, 1
	note A_, 1
	octave 4
	note D_, 8
	note Cs, 6
	octave 3
	note A_, 1
	octave 4
	note Cs, 1
	note E_, 8
	note D_, 4
	note Cs, 4
	octave 3
	note B_, 4
	note A_, 4
	note Gs, 1
	rest 3
	note E_, 4
	note Fs, 4
	note Gs, 4
	sound_loop 0, gbs_oakslab_Ch1.mainloop

gbs_oakslab_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 10, 2, 5
	note_type 12, 12, 4
	octave 3
	note Gs, 1
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 1
	note D_, 1
	note E_, 1
	note Fs, 1
	note Gs, 1
gbs_oakslab_Ch2.mainloop:
	note A_, 6
	note Gs, 1
	note Fs, 1
	note E_, 6
	note Ds, 1
	note E_, 1
	note Fs, 1
	rest 3
	note E_, 8
	note E_, 4
	note Fs, 6
	note E_, 1
	note D_, 1
	note Cs, 6
	octave 3
	note B_, 1
	octave 4
	note Cs, 1
	note D_, 1
	rest 3
	note Cs, 8
	note Cs, 4
	note D_, 6
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	note Fs, 8
	note E_, 6
	note Cs, 1
	note E_, 1
	note A_, 8
	note Gs, 4
	note A_, 2
	note Gs, 2
	note Fs, 4
	note Gs, 2
	note Fs, 2
	note E_, 1
	rest 1
	octave 3
	note Gs, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note Cs, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note Fs, 1
	rest 1
	sound_loop 0, gbs_oakslab_Ch2.mainloop

gbs_oakslab_Ch3:
	gbs_switch 2
	note_type 12, 1, 1
	rest 2
	octave 4
	note Gs, 1
	rest 1
	note Fs, 1
	rest 1
	note E_, 1
	rest 1
gbs_oakslab_Ch3.mainloop:
	note Cs, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 3
	note Fs, 1
	rest 3
	note Fs, 1
	rest 1
	note Cs, 1
	rest 1
	note Fs, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 3
	note Fs, 1
	rest 3
	note Fs, 1
	rest 1
	note Cs, 1
	rest 1
	note Fs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 3
	note Fs, 1
	rest 3
	note Fs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Gs, 1
	rest 3
	note Gs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 3
	note Fs, 1
	rest 1
	note E_, 1
	rest 5
	note Gs, 1
	rest 3
	note Fs, 1
	rest 3
	note E_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 1
	note Cs, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	note Cs, 1
	rest 1
	note Fs, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	note Cs, 1
	rest 1
	note Fs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Gs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Gs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 1
	note D_, 1
	rest 1
	note Fs, 1
	rest 1
	note E_, 1
	rest 3
	note Gs, 1
	rest 3
	note Fs, 1
	rest 3
	note E_, 1
	rest 3
	sound_loop 0, gbs_oakslab_Ch3.mainloop

	.align 4
	.global gbs_oakslab_Header
gbs_oakslab_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_oakslab_Ch1
	.int gbs_oakslab_Ch2
	.int gbs_oakslab_Ch3
