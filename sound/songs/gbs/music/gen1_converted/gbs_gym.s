	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gym_Ch1:
	gbs_switch 0
	tempo 138
	volume 7, 7
	duty_cycle 3
	vibrato 8, 2, 2
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 5
	octave 3
	note G_, 6
	note C_, 1
	note G_, 1
	note F_, 6
	octave 2
	note As, 1
	octave 3
	note F_, 1
	note E_, 6
	octave 2
	note A_, 1
	octave 3
	note E_, 1
	note F_, 4
	note G_, 4
gbs_gym_Ch1.mainloop:
	note E_, 4
	note F_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note_type 12, 11, 1
	note D_, 3
	note_type 12, 11, 5
	note E_, 1
	note F_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 4
	note F_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note D_, 1
	note E_, 1
	note F_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	octave 4
	note C_, 4
	octave 3
	note As, 2
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note_type 12, 11, 1
	note As, 3
	note_type 12, 11, 5
	note F_, 1
	note F_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	octave 4
	note C_, 4
	octave 3
	note As, 2
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note D_, 2
	note D_, 1
	note E_, 1
	note F_, 4
	note As, 2
	note F_, 1
	note As, 1
	octave 4
	note D_, 4
	octave 3
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note D_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note C_, 1
	note D_, 1
	note E_, 4
	note C_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note E_, 2
	note C_, 1
	note E_, 1
	note F_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note F_, 2
	note D_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note C_, 1
	note D_, 1
	note E_, 4
	note D_, 2
	note E_, 2
	note F_, 2
	note F_, 2
	note G_, 2
	note E_, 1
	note G_, 1
	note As, 2
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note G_, 2
	note A_, 2
	sound_loop 0, gbs_gym_Ch1.mainloop

gbs_gym_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 10, 2, 5
	note_type 12, 12, 7
	octave 4
	note C_, 6
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note As, 6
	note F_, 1
	note As, 1
	note_type 12, 10, 0
	note A_, 12
	note_type 12, 12, 7
	note B_, 4
gbs_gym_Ch2.mainloop:
	octave 4
	note C_, 12
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note_type 12, 12, 2
	note D_, 3
	octave 3
	note As, 1
	note_type 12, 12, 7
	note As, 12
	octave 4
	note C_, 12
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note_type 12, 12, 4
	octave 3
	note As, 2
	note_type 12, 12, 7
	note As, 1
	octave 4
	note C_, 1
	note D_, 12
	note E_, 12
	note D_, 2
	note E_, 2
	note_type 12, 12, 2
	note F_, 3
	note D_, 1
	note_type 12, 12, 7
	note D_, 4
	note_type 12, 12, 2
	note As, 3
	note F_, 1
	note_type 12, 12, 7
	note F_, 4
	note E_, 12
	note D_, 2
	note E_, 2
	note F_, 2
	note D_, 1
	note F_, 1
	note As, 12
	octave 3
	note G_, 6
	octave 4
	note C_, 6
	octave 3
	note G_, 4
	note As, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note_type 12, 12, 3
	note E_, 2
	note_type 12, 12, 7
	note E_, 1
	note F_, 1
	note G_, 6
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note As, 4
	note A_, 4
	note G_, 4
	note C_, 2
	note D_, 2
	note G_, 6
	octave 4
	note C_, 6
	octave 3
	note G_, 4
	note As, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note_type 12, 12, 3
	note E_, 2
	note_type 12, 12, 7
	note E_, 1
	note F_, 1
	note G_, 4
	note_type 12, 12, 3
	note G_, 2
	note_type 12, 12, 7
	note G_, 1
	note A_, 1
	note As, 4
	note_type 12, 12, 4
	octave 4
	note C_, 2
	note_type 12, 12, 7
	note C_, 1
	note D_, 1
	note E_, 12
	sound_loop 0, gbs_gym_Ch2.mainloop

gbs_gym_Ch3:
	gbs_switch 2
	note_type 12, 1, 1
	rest 16
	rest 10
	octave 4
	note G_, 2
	note F_, 2
	note D_, 2
gbs_gym_Ch3.mainloop:
	sound_call gbs_gym_Ch3.sub1
	sound_call gbs_gym_Ch3.sub2
	sound_call gbs_gym_Ch3.sub1
	sound_call gbs_gym_Ch3.sub2
	sound_call gbs_gym_Ch3.sub1
	sound_call gbs_gym_Ch3.sub2
	sound_call gbs_gym_Ch3.sub1
	sound_call gbs_gym_Ch3.sub2
	sound_call gbs_gym_Ch3.sub1
	sound_call gbs_gym_Ch3.sub3
	sound_call gbs_gym_Ch3.sub1
	sound_call gbs_gym_Ch3.sub3
	sound_call gbs_gym_Ch3.sub1
	sound_call gbs_gym_Ch3.sub3
	sound_call gbs_gym_Ch3.sub1
	note F_, 2
	note As, 2
	note F_, 2
	note As, 2
	note F_, 2
	note As, 2
	note A_, 2
	note F_, 2
	sound_loop 0, gbs_gym_Ch3.mainloop

gbs_gym_Ch3.sub1:
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	sound_ret

gbs_gym_Ch3.sub2:
	note D_, 2
	note F_, 2
	note D_, 2
	note F_, 2
	note D_, 2
	note F_, 2
	note D_, 2
	note F_, 2
	sound_ret

gbs_gym_Ch3.sub3:
	note F_, 2
	note As, 2
	note F_, 2
	note As, 2
	note F_, 2
	note As, 2
	note F_, 2
	note As, 2
	sound_ret

	.align 4
	.global gbs_gym_Header
gbs_gym_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gym_Ch1
	.int gbs_gym_Ch2
	.int gbs_gym_Ch3
