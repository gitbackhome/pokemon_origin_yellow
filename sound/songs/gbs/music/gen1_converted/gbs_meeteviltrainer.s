	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_meeteviltrainer_Ch1:
	gbs_switch 0
	tempo 124
	volume 7, 7
	duty_cycle 2
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 1
	rest 4
	octave 3
	note D_, 2
	note Cs, 2
	note_type 12, 4, -7
	note D_, 4
gbs_meeteviltrainer_Ch1.mainloop:
	note_type 12, 10, 1
	note D_, 4
	note D_, 4
	note D_, 4
	note_type 12, 7, 0
	note D_, 4
	sound_loop 0, gbs_meeteviltrainer_Ch1.mainloop

gbs_meeteviltrainer_Ch2:
	gbs_switch 1
	duty_cycle 1
	note_type 12, 11, 6
	octave 3
	note B_, 2
	note As, 2
	note B_, 8
gbs_meeteviltrainer_Ch2.mainloop:
	note_type 12, 12, 2
	octave 4
	note Ds, 2
	note D_, 2
	note Cs, 2
	note C_, 2
	octave 3
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note_type 12, 4, -7
	note As, 4
	note_type 12, 12, 2
	note G_, 2
	note Gs, 2
	note A_, 2
	note As, 2
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note_type 12, 3, -7
	note As, 4
	note_type 12, 12, 2
	sound_loop 0, gbs_meeteviltrainer_Ch2.mainloop

gbs_meeteviltrainer_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	rest 8
	octave 4
	note Fs, 1
	rest 1
	note F_, 1
	rest 1
gbs_meeteviltrainer_Ch3.mainloop:
	note Fs, 1
	rest 3
	note Fs, 1
	rest 3
	note Fs, 1
	rest 3
	note As, 4
	sound_loop 0, gbs_meeteviltrainer_Ch3.mainloop

	.align 4
	.global gbs_meeteviltrainer_Header
gbs_meeteviltrainer_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_meeteviltrainer_Ch1
	.int gbs_meeteviltrainer_Ch2
	.int gbs_meeteviltrainer_Ch3
