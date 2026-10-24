	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_routes3_Ch1:
	gbs_switch 0
	tempo 148
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 5
	octave 3
	note E_, 1
	note Fs, 1
	note G_, 6
	note F_, 1
	note G_, 1
	note E_, 1
	rest 16
	rest 15
gbs_routes3_Ch1.mainloop:
	note_type 12, 11, 5
	note E_, 6
	note D_, 1
	note E_, 1
	note C_, 4
	note E_, 4
	note C_, 6
	note D_, 1
	note E_, 1
	note F_, 2
	note G_, 2
	note G_, 2
	note A_, 2
	note_type 12, 10, 7
	note As, 8
	note F_, 8
	note D_, 8
	note F_, 8
	note_type 12, 11, 5
	note E_, 6
	note D_, 1
	note E_, 1
	note C_, 4
	note E_, 4
	note C_, 6
	note D_, 1
	note E_, 1
	note F_, 2
	note G_, 2
	note G_, 2
	note A_, 2
	note_type 12, 10, 7
	note As, 8
	note As, 8
	note D_, 8
	note F_, 8
	note_type 12, 11, 5
	note E_, 4
	note E_, 2
	note F_, 2
	note G_, 4
	note F_, 2
	note E_, 2
	note B_, 2
	octave 2
	note G_, 4
	octave 3
	note B_, 8
	note A_, 2
	note_type 8, 12, 3
	note A_, 4
	note F_, 4
	note A_, 4
	note_type 8, 4, -7
	note A_, 12
	note_type 8, 9, 0
	note F_, 12
	note G_, 12
	sound_loop 0, gbs_routes3_Ch1.mainloop

gbs_routes3_Ch2:
	gbs_switch 1
	vibrato 8, 2, 3
	duty_cycle 2
	note_type 12, 12, 7
	octave 3
	note G_, 1
	note As, 1
	note B_, 6
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	rest 15
	rest 16
gbs_routes3_Ch2.mainloop:
	note_type 12, 12, 7
	duty_cycle 2
	octave 4
	note C_, 6
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note E_, 10
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 8
	note F_, 8
	note_type 12, 12, 5
	duty_cycle 3
	octave 3
	note As, 8
	note A_, 8
	note_type 12, 12, 7
	duty_cycle 2
	octave 4
	note C_, 6
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note E_, 10
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 8
	note F_, 8
	note_type 12, 12, 5
	duty_cycle 3
	octave 3
	note As, 8
	octave 4
	note D_, 6
	note_type 12, 12, 7
	duty_cycle 2
	note C_, 1
	note D_, 1
	note E_, 2
	note D_, 2
	note E_, 2
	note C_, 8
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 2
	octave 3
	note G_, 4
	octave 4
	note G_, 8
	note F_, 1
	note E_, 1
	note_type 8, 13, 3
	note F_, 4
	note E_, 4
	note_type 8, 12, 4
	note C_, 4
	note_type 8, 12, 5
	note C_, 12
	note_type 12, 10, 0
	duty_cycle 3
	octave 3
	note A_, 8
	note B_, 8
	sound_loop 0, gbs_routes3_Ch2.mainloop

gbs_routes3_Ch3:
	gbs_switch 2
	vibrato 4, 1, 0
	note_type 6, 1, 2
	octave 4
	note G_, 2
	note As, 2
	note B_, 8
	note A_, 8
	note G_, 2
	rest 2
	note G_, 7
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 8
	note G_, 2
	rest 2
	note G_, 7
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 8
gbs_routes3_Ch3.mainloop:
	note_type 12, 1, 2
	note E_, 1
	rest 1
	note G_, 4
	note E_, 1
	note E_, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 4
	note E_, 1
	rest 1
	note G_, 4
	note E_, 1
	note E_, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 2
	note A_, 2
	note F_, 1
	rest 1
	note As, 4
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note As, 4
	note F_, 1
	rest 1
	note As, 4
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note As, 2
	note F_, 2
	note E_, 1
	rest 1
	note G_, 4
	note E_, 1
	note E_, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 4
	note E_, 1
	rest 1
	note G_, 4
	note E_, 1
	note E_, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 2
	note A_, 2
	note F_, 1
	rest 1
	note As, 4
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note As, 4
	note F_, 1
	rest 1
	note As, 4
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note As, 2
	note A_, 2
	note G_, 1
	rest 1
	octave 5
	note C_, 4
	octave 4
	note G_, 1
	note G_, 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note C_, 4
	octave 4
	note G_, 1
	rest 1
	octave 5
	note D_, 4
	octave 4
	note G_, 1
	note G_, 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note D_, 4
	octave 4
	note F_, 1
	rest 1
	octave 5
	note C_, 4
	octave 4
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 5
	note C_, 4
	octave 4
	note F_, 1
	rest 1
	note A_, 4
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 4
	sound_loop 0, gbs_routes3_Ch3.mainloop

gbs_routes3_Ch4:
	gbs_switch 3
	drum_speed 6
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 8
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 18, 2
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 18, 2
	drum_note 17, 4
	drum_note 18, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
gbs_routes3_Ch4.mainloop:
	drum_note 17, 12
	drum_note 17, 2
	drum_note 18, 2
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 8
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 18, 2
	drum_note 17, 4
	drum_note 17, 10
	drum_note 19, 1
	drum_note 19, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 19, 2
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 8
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 10
	drum_note 19, 1
	drum_note 19, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 8
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 10
	drum_note 19, 1
	drum_note 19, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 8
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 8
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 12
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	sound_loop 0, gbs_routes3_Ch4.mainloop

	.align 4
	.global gbs_routes3_Header
gbs_routes3_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_routes3_Ch1
	.int gbs_routes3_Ch2
	.int gbs_routes3_Ch3
	.int gbs_routes3_Ch4
