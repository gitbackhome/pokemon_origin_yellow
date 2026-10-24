	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_cinnabarmansion_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	vibrato 11, 2, 5
	duty_cycle 2
gbs_gen1_cinnabarmansion_Ch1.mainloop:
gbs_gen1_cinnabarmansion_Ch1.loop1:
	note_type 12, 6, 2
	octave 5
	note E_, 1
	note E_, 1
	octave 4
	note B_, 1
	note B_, 1
	note C_, 1
	rest 2
	octave 5
	note B_, 2
	note E_, 2
	octave 4
	note C_, 2
	note B_, 2
	note E_, 2
	note C_, 1
	octave 5
	note B_, 1
	rest 2
	sound_loop 14, gbs_gen1_cinnabarmansion_Ch1.loop1
	note_type 12, 10, 5
	rest 16
	rest 16
	rest 15
	octave 4
	note C_, 1
	octave 5
	note B_, 1
	note B_, 2
	sound_loop 0, gbs_gen1_cinnabarmansion_Ch1.mainloop

gbs_gen1_cinnabarmansion_Ch2:
	gbs_switch 1
	duty_cycle 2
	pitch_offset 1	@ Gen 1 perfect pitch
	vibrato 10, 2, 4
	note_type 12, 12, 2
gbs_gen1_cinnabarmansion_Ch2.introloop:
	rest 16
	rest 16
	sound_loop 4, gbs_gen1_cinnabarmansion_Ch2.introloop
gbs_gen1_cinnabarmansion_Ch2.mainloop:
	note_type 12, 12, 2
gbs_gen1_cinnabarmansion_Ch2.loop1:
	sound_call gbs_gen1_cinnabarmansion_Ch2.sub1
	sound_loop 3, gbs_gen1_cinnabarmansion_Ch2.loop1
	octave 3
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	rest 4
	note As, 4
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	note G_, 4
	note Ds, 4
	sound_loop 0, gbs_gen1_cinnabarmansion_Ch2.mainloop

gbs_gen1_cinnabarmansion_Ch2.sub1:
	octave 3
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	note A_, 4
	note As, 4
	note E_, 4
	note Ds, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Gs, 4
	rest 4
	note As, 4
	sound_ret

gbs_gen1_cinnabarmansion_Ch3:
	gbs_switch 2
	note_type 12, 1, 1
gbs_gen1_cinnabarmansion_Ch3.mainloop:
gbs_gen1_cinnabarmansion_Ch3.loop1:
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	note Ds, 2
	rest 2
	sound_loop 8, gbs_gen1_cinnabarmansion_Ch3.loop1
	note E_, 16
	note Ds, 16
	note G_, 16
	note Gs, 8
	note Ds, 8
	sound_loop 0, gbs_gen1_cinnabarmansion_Ch3.mainloop

gbs_gen1_cinnabarmansion_Ch4:
	gbs_switch 3
	drum_speed 6
	rest 16
	rest 16
	rest 16
	rest 16
gbs_gen1_cinnabarmansion_Ch4.mainloop:
	drum_note 12, 2
	drum_note 12, 2
	drum_note 13, 4
	drum_note 12, 2
	drum_note 12, 2
	drum_note 13, 4
	drum_note 12, 2
	drum_note 12, 2
	drum_note 13, 4
	drum_note 12, 2
	drum_note 12, 2
	drum_note 14, 4
	drum_note 12, 2
	drum_note 12, 2
	rest 2
	rest 10
	rest 8
	drum_note 14, 8
	sound_loop 0, gbs_gen1_cinnabarmansion_Ch4.mainloop

	.align 4
	.global gbs_gen1_cinnabarmansion_Header
gbs_gen1_cinnabarmansion_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_cinnabarmansion_Ch1
	.int gbs_gen1_cinnabarmansion_Ch2
	.int gbs_gen1_cinnabarmansion_Ch3
	.int gbs_gen1_cinnabarmansion_Ch4
