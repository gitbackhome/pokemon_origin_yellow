	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_meetjessiejames_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	duty_cycle 3
	vibrato 8, 1, 4
	note_type 12, 11, 2
	octave 3
	note Gs, 1
	note G_, 1
	note Fs, 2
	note F_, 2
	note E_, 2
	note Ds, 2
	note D_, 2
	note Cs, 2
	note C_, 2
	note_type 12, 11, 6
	note Ds, 12
	note C_, 4
gbs_meetjessiejames_Ch1.mainloop:
	note_type 12, 11, 2
	octave 4
	note D_, 16
	rest 12
	note_type 12, 11, 4
	octave 3
	note As, 4
	rest 16
	rest 8
	note_type 12, 11, 2
	octave 2
	note A_, 2
	octave 3
	note As, 2
	note A_, 4
	note D_, 1
	note Ds, 1
	note Ds, 2
	note Ds, 2
	note D_, 2
	note Ds, 2
	note D_, 2
	note Ds, 2
	note F_, 2
	note D_, 1
	note Ds, 1
	note Ds, 2
	note Ds, 2
	note D_, 2
	octave 2
	note As, 4
	note_type 12, 11, 4
	octave 3
	note B_, 4
	note_type 12, 11, 2
	note D_, 1
	note Ds, 1
	note Ds, 2
	note Ds, 2
	note D_, 2
	note Ds, 2
	note D_, 2
	note Ds, 2
	note F_, 2
	note D_, 1
	note Ds, 1
	note Ds, 2
	note Ds, 2
	note D_, 2
	octave 2
	note As, 2
	octave 3
	note B_, 2
	note_type 12, 11, 4
	note As, 4
	sound_loop 0, gbs_meetjessiejames_Ch1.mainloop

gbs_meetjessiejames_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 6, 1, 5
	note_type 12, 12, 2
	octave 4
	note D_, 1
	note Cs, 1
	note C_, 2
	octave 3
	note B_, 2
	note As, 2
	note A_, 2
	note Gs, 2
	note G_, 2
	note Fs, 2
	note_type 12, 12, 7
	note A_, 12
	octave 4
	note Cs, 4
gbs_meetjessiejames_Ch2.mainloop:
	note_type 12, 12, 2
	octave 3
	note Cs, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note Cs, 2
	note D_, 2
	note Cs, 2
	note D_, 2
	note E_, 2
	note Cs, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note Cs, 2
	octave 2
	note A_, 4
	note_type 12, 12, 5
	octave 4
	note Cs, 4
	note_type 12, 12, 2
	note D_, 1
	octave 3
	note D_, 1
	note D_, 2
	note D_, 2
	note Cs, 2
	note D_, 2
	note Cs, 2
	note D_, 2
	note E_, 2
	note Cs, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note Cs, 2
	note_type 12, 12, 6
	octave 4
	note D_, 8
	note_type 12, 12, 2
	note Ds, 6
	note F_, 4
	note Ds, 4
	octave 3
	note As, 2
	octave 4
	note Ds, 6
	note F_, 4
	note Ds, 2
	note_type 12, 12, 5
	note D_, 4
	note_type 12, 12, 2
	note Ds, 6
	note F_, 4
	note Ds, 4
	octave 3
	note As, 2
	octave 4
	note Ds, 4
	note F_, 4
	note_type 12, 12, 5
	note Ds, 8
	sound_loop 0, gbs_meetjessiejames_Ch2.mainloop

gbs_meetjessiejames_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	rest 16
	rest 8
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note Ds, 2
gbs_meetjessiejames_Ch3.mainloop:
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note As, 2
	note A_, 2
	note Ds, 2
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note D_, 1
	rest 1
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note D_, 2
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	octave 3
	note As, 1
	rest 1
	octave 4
	note Cs, 1
	rest 1
	note E_, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	note As, 1
	rest 1
	note Ds, 1
	rest 1
	octave 3
	note As, 1
	rest 1
	octave 4
	note Cs, 1
	rest 1
	note E_, 1
	rest 1
	sound_loop 0, gbs_meetjessiejames_Ch3.mainloop

	.align 4
	.global gbs_meetjessiejames_Header
gbs_meetjessiejames_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_meetjessiejames_Ch1
	.int gbs_meetjessiejames_Ch2
	.int gbs_meetjessiejames_Ch3
