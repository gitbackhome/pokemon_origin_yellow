	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_halloffame_Ch1:
	gbs_switch 0
	tempo 112
	volume 7, 7
	duty_cycle 3
	vibrato 12, 2, 2
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 3
	rest 16
	rest 16
	rest 16
	rest 12
	octave 3
	note D_, 1
	note E_, 1
	note F_, 1
	note Fs, 1
gbs_halloffame_Ch1.mainloop:
gbs_halloffame_Ch1.loop1:
	note_type 12, 8, 0
	octave 4
	note C_, 16
	note E_, 16
	note Fs, 16
	note_type 12, 6, 0
	note F_, 16
	sound_loop 3, gbs_halloffame_Ch1.loop1
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, gbs_halloffame_Ch1.mainloop

gbs_halloffame_Ch2:
	gbs_switch 1
	vibrato 8, 2, 5
	duty_cycle 3
gbs_halloffame_Ch2.mainloop:
	note_type 12, 12, 4
	octave 3
	note G_, 2
	note D_, 2
	note G_, 2
	note A_, 10
	note G_, 2
	note D_, 2
	note G_, 2
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note A_, 10
	note F_, 2
	note C_, 2
	note F_, 2
	note As, 4
	note A_, 4
	note F_, 2
	sound_loop 0, gbs_halloffame_Ch2.mainloop

gbs_halloffame_Ch3:
	gbs_switch 2
gbs_halloffame_Ch3.mainloop:
	note_type 12, 1, 2
gbs_halloffame_Ch3.loop1:
	octave 4
	note D_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	sound_loop 12, gbs_halloffame_Ch3.loop1
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note E_, 4
	note G_, 4
	note E_, 4
	note G_, 4
	note Fs, 4
	note A_, 4
	note Fs, 4
	note A_, 4
	note E_, 4
	note G_, 4
	note E_, 4
	note G_, 4
	sound_loop 0, gbs_halloffame_Ch3.mainloop

	.align 4
	.global gbs_halloffame_Header
gbs_halloffame_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_halloffame_Ch1
	.int gbs_halloffame_Ch2
	.int gbs_halloffame_Ch3
