	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_meetprofoak_Ch1:
	gbs_switch 0
	tempo 112
	volume 7, 7
	duty_cycle 3
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 4
	octave 3
	note Fs, 1
	note B_, 1
	octave 4
	note Ds, 1
	note E_, 1
	note Fs, 12
	note_type 12, 10, 2
	octave 3
	note E_, 6
	note B_, 10
	note E_, 6
	note B_, 10
	note E_, 6
	note Ds, 4
	note Fs, 2
	note Fs, 4
	note E_, 6
	note Ds, 4
	note Fs, 2
	note Fs, 4
	note E_, 6
	note B_, 10
	note E_, 6
	note B_, 10
	note E_, 6
	note Ds, 4
	note Fs, 2
	note Fs, 4
	note E_, 6
	note Ds, 4
	note Fs, 2
	note Fs, 4
gbs_meetprofoak_Ch1.mainloop:
	note Fs, 6
	note E_, 4
	note A_, 2
	note A_, 4
	note Fs, 6
	note E_, 4
	note A_, 2
	note A_, 4
	note Fs, 6
	note E_, 4
	note Gs, 2
	note Gs, 4
	note Fs, 6
	note E_, 4
	note Gs, 2
	note Gs, 4
	note E_, 6
	note Ds, 4
	note Fs, 2
	note Fs, 4
	note E_, 6
	note Ds, 4
	note Fs, 2
	note Fs, 4
	note Fs, 6
	note E_, 4
	note Gs, 2
	note Gs, 4
	note Fs, 6
	note E_, 4
	note Gs, 2
	note Gs, 4
	sound_loop 0, gbs_meetprofoak_Ch1.mainloop

gbs_meetprofoak_Ch2:
	gbs_switch 1
	vibrato 8, 1, 1
	duty_cycle 2
	note_type 12, 12, 4
	octave 3
	note B_, 1
	octave 4
	note Ds, 1
	note Fs, 1
	note As, 1
	note B_, 12
	note_type 12, 11, 2
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 4
	note Ds, 2
	note Cs, 4
	note_type 12, 6, 4
	octave 4
	note B_, 2
	octave 5
	note Cs, 2
	note Ds, 2
	note E_, 4
	note Ds, 2
	note Cs, 4
	note_type 12, 11, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 4
	note B_, 2
	note B_, 4
	note_type 12, 8, 1
	octave 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 4
	note B_, 2
	note B_, 4
	note_type 12, 11, 2
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 4
	note Ds, 2
	note Cs, 4
	note_type 12, 6, 4
	octave 4
	note B_, 2
	octave 5
	note Cs, 2
	note Ds, 2
	note E_, 4
	note Ds, 2
	note Cs, 4
	note_type 12, 11, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 4
	note B_, 2
	note B_, 4
	note_type 12, 8, 1
	octave 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 4
	note B_, 2
	note B_, 4
	note_type 12, 11, 5
gbs_meetprofoak_Ch2.mainloop:
	octave 4
	note Cs, 6
	octave 3
	note A_, 1
	octave 4
	note Cs, 1
	note E_, 6
	note Cs, 1
	note E_, 1
	note Fs, 4
	note E_, 4
	note Ds, 4
	note Cs, 4
	octave 3
	note B_, 6
	note Gs, 1
	note B_, 1
	octave 4
	note E_, 8
	note_type 12, 6, 5
	octave 4
	note B_, 6
	note Gs, 1
	note B_, 1
	octave 5
	note E_, 8
	note_type 12, 11, 5
	octave 3
	note A_, 6
	note Fs, 1
	note A_, 1
	octave 4
	note Ds, 8
	note E_, 4
	note Ds, 4
	note Cs, 4
	note C_, 4
	octave 3
	note B_, 6
	note Gs, 1
	note B_, 1
	octave 4
	note E_, 6
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note_type 12, 11, 7
	note Gs, 16
	sound_loop 0, gbs_meetprofoak_Ch2.mainloop

gbs_meetprofoak_Ch3:
	gbs_switch 2
	note_type 12, 1, 2
	rest 10
	octave 4
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note Cs, 1
	rest 1
	octave 4
	note B_, 1
	rest 5
	octave 5
	note E_, 4
	rest 6
	octave 4
	note B_, 1
	rest 5
	octave 5
	note E_, 4
	octave 4
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note Cs, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note G_, 1
	rest 1
	note Gs, 1
	rest 1
gbs_meetprofoak_Ch3.mainloop:
gbs_meetprofoak_Ch3.loop1:
	octave 4
	note A_, 1
	rest 1
	octave 5
	note Cs, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	octave 5
	note Cs, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	octave 5
	note Cs, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	octave 5
	note Cs, 1
	rest 1
	sound_loop 2, gbs_meetprofoak_Ch3.loop1
gbs_meetprofoak_Ch3.loop2:
	octave 4
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	sound_loop 2, gbs_meetprofoak_Ch3.loop2
gbs_meetprofoak_Ch3.loop3:
	note Fs, 1
	rest 1
	note A_, 1
	rest 1
	note Fs, 1
	rest 1
	note A_, 1
	rest 1
	note Fs, 1
	rest 1
	note A_, 1
	rest 1
	note Fs, 1
	rest 1
	note A_, 1
	rest 1
	sound_loop 2, gbs_meetprofoak_Ch3.loop3
gbs_meetprofoak_Ch3.loop4:
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	note Gs, 1
	rest 1
	note B_, 1
	rest 1
	sound_loop 2, gbs_meetprofoak_Ch3.loop4
	sound_loop 0, gbs_meetprofoak_Ch3.mainloop

	.align 4
	.global gbs_meetprofoak_Header
gbs_meetprofoak_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_meetprofoak_Ch1
	.int gbs_meetprofoak_Ch2
	.int gbs_meetprofoak_Ch3
