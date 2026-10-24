	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_yellowunusedsong_Ch1:
	gbs_switch 0
	tempo 140
	volume 7, 7
	duty_cycle 3
	vibrato 8, 1, 4
	note_type 8, 11, 2
	octave 3
	note A_, 6
	note A_, 2
	note A_, 2
	note A_, 2
	note As, 6
	note As, 6
	note G_, 6
	note G_, 6
	note A_, 6
	note E_, 6
	note A_, 6
	note A_, 2
	note A_, 2
	note A_, 2
	note As, 6
	note As, 6
	note A_, 6
	note G_, 6
	note A_, 12
gbs_yellowunusedsong_Ch1.mainloop:
	note A_, 6
	note A_, 2
	note A_, 2
	note A_, 2
	note As, 6
	note As, 6
	note G_, 6
	note G_, 6
	note A_, 6
	note E_, 6
	note A_, 6
	note A_, 2
	note A_, 2
	note A_, 2
	note As, 6
	note As, 6
	note G_, 6
	octave 4
	note Ds, 6
	note D_, 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 3
	note A_, 6
	note A_, 2
	note A_, 2
	note A_, 2
	note As, 6
	note As, 6
	note G_, 6
	note G_, 6
	note A_, 6
	note E_, 6
	note A_, 6
	note A_, 2
	note A_, 2
	note A_, 2
	note As, 6
	note As, 6
	note A_, 6
	note G_, 6
	note A_, 12
	sound_loop 0, gbs_yellowunusedsong_Ch1.mainloop

gbs_yellowunusedsong_Ch2:
	gbs_switch 1
	duty_cycle 2
	note_type 8, 12, 2
	octave 4
	note D_, 6
	note D_, 2
	note D_, 2
	note D_, 2
	note Ds, 6
	note Ds, 6
	note C_, 6
	note C_, 6
	note D_, 6
	octave 3
	note A_, 6
	octave 4
	note D_, 6
	note D_, 2
	note D_, 2
	note D_, 2
	note Ds, 6
	note Ds, 6
	note D_, 6
	note As, 6
	note A_, 12
gbs_yellowunusedsong_Ch2.mainloop:
	note D_, 6
	note D_, 2
	note D_, 2
	note D_, 2
	note Ds, 6
	note Ds, 6
	note C_, 6
	note C_, 6
	note D_, 6
	octave 3
	note A_, 6
	octave 4
	note D_, 6
	note D_, 2
	note D_, 2
	note D_, 2
	note Ds, 6
	note Ds, 6
	note C_, 6
	note Gs, 6
	note G_, 12
	note_type 8, 9, 0
	octave 3
	note Ds, 16
	note Ds, 8
	note Ds, 16
	note Ds, 8
	octave 2
	note As, 16
	note As, 8
	octave 3
	note Ds, 12
	note F_, 12
	note_type 8, 12, 2
	octave 4
	note D_, 6
	note D_, 2
	note D_, 2
	note D_, 2
	note Ds, 6
	note Ds, 6
	note C_, 6
	note C_, 6
	note D_, 6
	octave 3
	note A_, 6
	octave 4
	note D_, 6
	note D_, 2
	note D_, 2
	note D_, 2
	note Ds, 6
	note Ds, 6
	note D_, 6
	note As, 6
	note A_, 12
	sound_loop 0, gbs_yellowunusedsong_Ch2.mainloop

gbs_yellowunusedsong_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	vibrato 2, 1, 5
	rest 16
	rest 12
	octave 4
	note C_, 4
	note D_, 8
	note Ds, 8
	note G_, 8
	note As, 8
gbs_yellowunusedsong_Ch3.mainloop:
	note A_, 8
	note As, 8
	note G_, 8
	note A_, 4
	note D_, 4
	note A_, 8
	note As, 8
	octave 5
	note Cs, 8
	note D_, 8
	note Ds, 16
	note Ds, 16
	octave 4
	note As, 16
	octave 5
	note Ds, 8
	note F_, 8
	octave 4
	note D_, 16
	note D_, 16
	octave 4
	note D_, 8
	note Ds, 8
	note G_, 8
	note As, 8
	sound_loop 0, gbs_yellowunusedsong_Ch3.mainloop

gbs_yellowunusedsong_Ch4:
	gbs_switch 3
	drum_speed 12
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
gbs_yellowunusedsong_Ch4.mainloop:
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 12
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	sound_loop 0, gbs_yellowunusedsong_Ch4.mainloop

	.align 4
	.global gbs_yellowunusedsong_Header
gbs_yellowunusedsong_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_yellowunusedsong_Ch1
	.int gbs_yellowunusedsong_Ch2
	.int gbs_yellowunusedsong_Ch3
	.int gbs_yellowunusedsong_Ch4
