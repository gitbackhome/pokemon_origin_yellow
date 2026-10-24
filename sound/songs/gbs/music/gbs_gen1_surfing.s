	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_surfing_Ch1:
	gbs_switch 0
	tempo 160
	volume 7, 7
	duty_cycle 3
	vibrato 12, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 5
	rest 6
	octave 2
	note A_, 2
	note Gs, 3
	note Fs, 1
	note E_, 6
	octave 3
	note Gs, 2
	note Fs, 2
	note Gs, 4
gbs_surfing_Ch1.mainloop:
	note_type 12, 11, 2
	note E_, 2
	note E_, 4
	note E_, 2
	note E_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note_type 12, 11, 1
	note Fs, 3
	note_type 12, 11, 2
	note D_, 3
	note E_, 2
	note E_, 4
	note E_, 2
	note E_, 4
	note A_, 2
	note A_, 4
	note Gs, 2
	note Gs, 4
	note Fs, 2
	note Fs, 4
	note E_, 2
	note E_, 4
	note Gs, 2
	note Gs, 4
	note_type 12, 11, 1
	note Fs, 3
	note_type 12, 11, 2
	note Gs, 1
	note_type 12, 11, 4
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note_type 12, 11, 7
	note Cs, 6
	note_type 12, 11, 3
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note B_, 2
	octave 4
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note B_, 2
	octave 4
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 4
	sound_loop 0, gbs_surfing_Ch1.mainloop

gbs_surfing_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 16, 2, 5
	note_type 12, 12, 6
	octave 3
	note A_, 2
	note Gs, 3
	note Fs, 1
	note E_, 6
	note Gs, 6
	octave 4
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
gbs_surfing_Ch2.mainloop:
	note_type 12, 12, 6
	octave 4
	note E_, 6
	note Cs, 5
	note E_, 1
	note D_, 6
	octave 3
	note B_, 6
	octave 4
	note D_, 6
	octave 3
	note B_, 2
	note_type 12, 12, 1
	octave 4
	note Fs, 3
	note_type 12, 12, 6
	note D_, 1
	note E_, 6
	note Cs, 6
	note E_, 6
	note Cs, 5
	note E_, 1
	note Fs, 6
	note D_, 6
	note Fs, 6
	note E_, 2
	note_type 12, 12, 1
	note Fs, 3
	note_type 12, 12, 6
	note E_, 1
	note A_, 6
	note A_, 6
	note B_, 2
	note A_, 3
	note D_, 1
	note Fs, 6
	note E_, 2
	note Fs, 3
	note E_, 1
	note Cs, 6
	note D_, 2
	note Cs, 3
	octave 3
	note B_, 1
	octave 4
	note Fs, 6
	note E_, 2
	note Ds, 3
	note E_, 1
	note A_, 6
	note B_, 2
	note A_, 3
	note D_, 1
	note Fs, 6
	note E_, 2
	note Fs, 3
	note Gs, 1
	note A_, 6
	note Gs, 2
	note Fs, 3
	note E_, 1
	note Gs, 6
	note A_, 2
	note Gs, 3
	note A_, 1
	octave 5
	note Cs, 6
	sound_loop 0, gbs_surfing_Ch2.mainloop

gbs_surfing_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	rest 12
	octave 5
	note E_, 6
	octave 4
	note E_, 2
	note Fs, 2
	note Gs, 2
gbs_surfing_Ch3.mainloop:
	octave 3
	note A_, 2
	octave 4
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note A_, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	note Gs, 2
	note E_, 2
	note Gs, 1
	rest 2
	note E_, 1
	note Cs, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note A_, 2
	note Cs, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note A_, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	note Gs, 2
	note E_, 2
	note Gs, 1
	rest 2
	note E_, 1
	note Cs, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note A_, 2
	note D_, 2
	note Fs, 2
	note Fs, 2
	octave 3
	note A_, 2
	octave 4
	note Fs, 2
	note Fs, 2
	note E_, 2
	note A_, 2
	note A_, 2
	note Cs, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	note Gs, 2
	note E_, 2
	note A_, 2
	note A_, 2
	octave 3
	note A_, 2
	octave 4
	note A_, 2
	note A_, 2
	note D_, 2
	note Fs, 2
	note Fs, 2
	octave 3
	note A_, 2
	octave 4
	note Fs, 2
	note Fs, 2
	note E_, 2
	note A_, 2
	note A_, 2
	note Cs, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note Gs, 2
	octave 3
	note B_, 2
	octave 4
	note Gs, 2
	note Gs, 2
	note E_, 2
	note A_, 2
	note A_, 2
	note Cs, 2
	note D_, 2
	note E_, 2
	sound_loop 0, gbs_surfing_Ch3.mainloop

	.align 4
	.global gbs_surfing_Header
gbs_surfing_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_surfing_Ch1
	.int gbs_surfing_Ch2
	.int gbs_surfing_Ch3
