	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_meetfemaletrainer_Ch1:
	gbs_switch 0
	tempo 124
	volume 7, 7
	duty_cycle 1
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 2
	octave 3
	note Gs, 6
	octave 4
	note E_, 2
	note Ds, 2
	note Cs, 2
	note C_, 2
	note_type 12, 8, 1
gbs_gen1_meetfemaletrainer_Ch1.mainloop:
gbs_gen1_meetfemaletrainer_Ch1.loop1:
	octave 3
	note E_, 4
	sound_loop 12, gbs_gen1_meetfemaletrainer_Ch1.loop1
	note E_, 4
	octave 2
	note B_, 4
	note B_, 4
	octave 3
	note E_, 4
	sound_loop 0, gbs_gen1_meetfemaletrainer_Ch1.mainloop

gbs_gen1_meetfemaletrainer_Ch2:
	gbs_switch 1
	duty_cycle 2
	note_type 12, 12, 2
	octave 3
	note B_, 2
	note_type 12, 12, 7
	octave 4
	note B_, 12
gbs_gen1_meetfemaletrainer_Ch2.mainloop:
	note_type 12, 12, 2
	octave 3
	note B_, 4
	octave 4
	note Ds, 4
	note E_, 4
	note Ds, 4
	note Cs, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note As, 2
	octave 4
	note Cs, 2
	octave 3
	note B_, 4
	octave 4
	note Cs, 4
	octave 3
	note B_, 4
	note A_, 4
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	sound_loop 0, gbs_gen1_meetfemaletrainer_Ch2.mainloop

gbs_gen1_meetfemaletrainer_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	rest 8
	octave 5
	note Cs, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	note A_, 1
	rest 1
gbs_gen1_meetfemaletrainer_Ch3.mainloop:
	sound_call gbs_gen1_meetfemaletrainer_Ch3.sub1
	note Gs, 1
	rest 3
	note E_, 1
	rest 3
	note Gs, 1
	rest 3
	note E_, 1
	rest 3
	sound_call gbs_gen1_meetfemaletrainer_Ch3.sub1
	note Gs, 1
	rest 3
	note E_, 1
	rest 3
	note Gs, 1
	rest 3
	note B_, 1
	rest 3
	sound_loop 0, gbs_gen1_meetfemaletrainer_Ch3.mainloop

gbs_gen1_meetfemaletrainer_Ch3.sub1:
	note Gs, 1
	rest 3
	note E_, 1
	rest 3
	note Gs, 1
	rest 3
	note E_, 1
	rest 1
	note Fs, 1
	rest 1
	sound_ret

	.align 4
	.global gbs_gen1_meetfemaletrainer_Header
gbs_gen1_meetfemaletrainer_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_meetfemaletrainer_Ch1
	.int gbs_gen1_meetfemaletrainer_Ch2
	.int gbs_gen1_meetfemaletrainer_Ch3
