	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_gamecorner_Ch1:
	gbs_switch 0
	tempo 120
	volume 7, 7
	duty_cycle 3
	vibrato 12, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 5
	octave 3
	note A_, 6
	note_type 12, 11, 1
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Ds, 2
	note Cs, 2
	note Ds, 16
gbs_gen1_gamecorner_Ch1.mainloop:
	note_type 12, 11, 5
	octave 3
	note Cs, 4
	octave 2
	note Gs, 4
	octave 3
	note E_, 4
	octave 2
	note B_, 4
	octave 3
	note A_, 2
	note Gs, 8
	note_type 12, 10, 7
	note Gs, 2
	note A_, 2
	note B_, 2
	note_type 12, 11, 5
	note Gs, 6
	note E_, 2
	note Fs, 2
	note E_, 2
	note Ds, 2
	note E_, 2
	note_type 12, 10, 7
	note Fs, 8
	note Ds, 8
	note_type 12, 11, 5
	note Ds, 4
	octave 2
	note B_, 4
	octave 3
	note Fs, 4
	note Ds, 4
	note B_, 2
	note A_, 8
	note_type 12, 11, 7
	octave 4
	note E_, 2
	note Ds, 2
	note E_, 2
	note Ds, 6
	note Cs, 2
	octave 3
	note Ds, 2
	note E_, 2
	note Fs, 2
	note G_, 2
	note Gs, 2
	note_type 12, 9, 7
	note Gs, 1
	note G_, 1
	note Gs, 1
	note G_, 1
	note Gs, 2
	note_type 12, 11, 7
	note Fs, 8
	note_type 12, 11, 5
	note Cs, 4
	octave 2
	note Gs, 4
	octave 3
	note E_, 4
	octave 2
	note B_, 4
	octave 3
	note A_, 2
	note Gs, 8
	note_type 12, 11, 7
	note Gs, 2
	note A_, 2
	note B_, 2
	note Gs, 6
	note E_, 2
	note Fs, 2
	note E_, 2
	note Ds, 2
	note E_, 2
	note Fs, 8
	note_type 12, 9, 7
	note Ds, 4
	note Cs, 4
	note_type 12, 11, 5
	note Ds, 4
	octave 2
	note B_, 4
	octave 3
	note Fs, 4
	note Ds, 4
	note B_, 2
	note A_, 8
	note_type 12, 11, 7
	note Fs, 2
	note Gs, 2
	note A_, 2
	note B_, 4
	note A_, 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note_type 12, 12, 2
	note E_, 4
	octave 2
	note B_, 4
	octave 3
	note E_, 2
	note E_, 4
	note E_, 4
	note_type 12, 11, 7
	octave 2
	note B_, 2
	octave 3
	note Cs, 2
	note D_, 2
	note Ds, 10
	octave 2
	note B_, 2
	octave 3
	note Cs, 2
	note Ds, 2
	note E_, 8
	note_type 12, 11, 5
	octave 4
	note Ds, 4
	octave 3
	note B_, 4
	note Fs, 4
	note Ds, 4
	note_type 12, 11, 7
	note E_, 3
	note Ds, 1
	note_type 12, 11, 2
	note Cs, 2
	note Ds, 2
	note E_, 10
	note_type 12, 11, 7
	octave 2
	note B_, 2
	octave 3
	note Cs, 2
	note D_, 2
	note Ds, 10
	octave 2
	note B_, 2
	octave 3
	note Cs, 2
	note Ds, 2
	note E_, 8
	note_type 12, 11, 5
	octave 4
	note Ds, 4
	octave 3
	note B_, 4
	note Fs, 4
	note A_, 4
	note_type 12, 11, 7
	note Gs, 2
	note Gs, 1
	note G_, 1
	note Gs, 1
	note G_, 1
	note Gs, 1
	note G_, 1
	note Gs, 8
	sound_loop 0, gbs_gen1_gamecorner_Ch1.mainloop

gbs_gen1_gamecorner_Ch2:
	gbs_switch 1
	duty_cycle 2
	vibrato 10, 2, 3
	note_type 12, 12, 6
	octave 4
	note Cs, 6
	note_type 12, 12, 1
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	duty_cycle 3
	note B_, 1
	note As, 1
	note B_, 1
	note As, 1
	note B_, 1
	note As, 1
	note B_, 8
gbs_gen1_gamecorner_Ch2.mainloop:
	duty_cycle 2
	note_type 12, 12, 7
	octave 3
	note E_, 4
	octave 2
	note B_, 4
	octave 3
	note Gs, 4
	note E_, 4
	octave 4
	note Cs, 2
	octave 3
	note B_, 14
	octave 4
	note E_, 6
	note Ds, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 16
	note Fs, 4
	note Ds, 4
	note A_, 4
	note Fs, 4
	octave 4
	note Ds, 2
	note Cs, 14
	note Fs, 6
	note E_, 2
	note Ds, 2
	note Cs, 2
	octave 3
	note B_, 2
	note As, 2
	note B_, 16
	note E_, 4
	octave 2
	note B_, 4
	octave 3
	note Gs, 4
	note E_, 4
	octave 4
	note Cs, 2
	octave 3
	note B_, 14
	octave 4
	note E_, 6
	note Ds, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 16
	note Fs, 4
	note Ds, 4
	note A_, 4
	note Fs, 4
	octave 4
	note Ds, 2
	note Cs, 14
	note Fs, 6
	note E_, 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note_type 12, 12, 1
	note E_, 2
	note_type 12, 10, 1
	note E_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note E_, 1
	note Ds, 1
	note E_, 2
	note_type 12, 12, 7
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note D_, 2
	note Ds, 10
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 10
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note_type 12, 12, 5
	note Fs, 4
	note Ds, 4
	octave 3
	note B_, 4
	octave 4
	note A_, 4
	note Gs, 3
	note A_, 1
	note_type 12, 12, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note_type 12, 12, 7
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note D_, 2
	note Ds, 10
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note E_, 10
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note Fs, 4
	note Ds, 4
	note A_, 4
	note Fs, 4
	note B_, 16
	sound_loop 0, gbs_gen1_gamecorner_Ch2.mainloop

gbs_gen1_gamecorner_Ch3:
	gbs_switch 2
	note_type 12, 1, 3
	octave 5
	note Cs, 1
	rest 5
	octave 4
	note Fs, 1
	rest 1
	note Gs, 1
	rest 1
	note A_, 1
	rest 1
	note As, 1
	rest 1
	note As, 1
	rest 1
	note B_, 1
	rest 9
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Cs, 1
	rest 1
	note Ds, 1
	rest 1
gbs_gen1_gamecorner_Ch3.mainloop:
	sound_call gbs_gen1_gamecorner_Ch3.sub1
	sound_call gbs_gen1_gamecorner_Ch3.sub2
	sound_call gbs_gen1_gamecorner_Ch3.sub3
	sound_call gbs_gen1_gamecorner_Ch3.sub4
	sound_call gbs_gen1_gamecorner_Ch3.sub5
	sound_call gbs_gen1_gamecorner_Ch3.sub6
	sound_call gbs_gen1_gamecorner_Ch3.sub7
	note Ds, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	note Ds, 1
	rest 1
	note A_, 1
	rest 1
	note Gs, 1
	rest 1
	note Fs, 1
	rest 1
	sound_call gbs_gen1_gamecorner_Ch3.sub1
	sound_call gbs_gen1_gamecorner_Ch3.sub2
	sound_call gbs_gen1_gamecorner_Ch3.sub3
	sound_call gbs_gen1_gamecorner_Ch3.sub4
	sound_call gbs_gen1_gamecorner_Ch3.sub5
	sound_call gbs_gen1_gamecorner_Ch3.sub6
	sound_call gbs_gen1_gamecorner_Ch3.sub7
	note E_, 1
	rest 3
	octave 3
	note B_, 1
	rest 3
	octave 4
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note B_, 1
	rest 1
	sound_call gbs_gen1_gamecorner_Ch3.sub5
	sound_call gbs_gen1_gamecorner_Ch3.sub1
	sound_call gbs_gen1_gamecorner_Ch3.sub8
	note E_, 1
	rest 1
	note Gs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Gs, 1
	rest 1
	note E_, 1
	rest 1
	note Gs, 1
	rest 1
	note Fs, 1
	rest 1
	note E_, 1
	rest 1
	sound_call gbs_gen1_gamecorner_Ch3.sub5
	sound_call gbs_gen1_gamecorner_Ch3.sub1
	sound_call gbs_gen1_gamecorner_Ch3.sub8
	sound_call gbs_gen1_gamecorner_Ch3.sub2
	sound_loop 0, gbs_gen1_gamecorner_Ch3.mainloop

gbs_gen1_gamecorner_Ch3.sub1:
	note E_, 1
	rest 1
	note Gs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Gs, 1
	rest 1
	note E_, 1
	rest 1
	note Gs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Gs, 1
	rest 1
	sound_ret

gbs_gen1_gamecorner_Ch3.sub2:
	note E_, 1
	rest 1
	note Gs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Gs, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Cs, 1
	rest 1
	note Ds, 1
	rest 1
	sound_ret

gbs_gen1_gamecorner_Ch3.sub3:
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	sound_ret

gbs_gen1_gamecorner_Ch3.sub4:
	note Ds, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	note Ds, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	sound_ret

gbs_gen1_gamecorner_Ch3.sub5:
	note Ds, 1
	rest 1
	note Fs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	note Ds, 1
	rest 1
	note Fs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	sound_ret

gbs_gen1_gamecorner_Ch3.sub6:
	note Ds, 1
	rest 1
	note Fs, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	note Ds, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note Cs, 1
	rest 1
	note Ds, 1
	rest 1
	sound_ret

gbs_gen1_gamecorner_Ch3.sub7:
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	note Fs, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	sound_ret

gbs_gen1_gamecorner_Ch3.sub8:
	note Fs, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	note Fs, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	sound_ret

	.align 4
	.global gbs_gen1_gamecorner_Header
gbs_gen1_gamecorner_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_gamecorner_Ch1
	.int gbs_gen1_gamecorner_Ch2
	.int gbs_gen1_gamecorner_Ch3
