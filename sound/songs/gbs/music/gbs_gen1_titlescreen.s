	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_titlescreen_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	vibrato 9, 3, 4
	duty_cycle 3
	note_type 12, 12, 1
	octave 2
	note E_, 1
	note G_, 1
	note B_, 1
	octave 3
	note D_, 1
	octave 2
	note G_, 4
	note G_, 6
	note G_, 1
	note G_, 1
	note G_, 4
	note G_, 4
	note G_, 4
	note_type 8, 12, 1
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note Fs, 2
gbs_gen1_titlescreen_Ch1.mainloop:
	sound_call gbs_gen1_titlescreen_Ch1.sub1
	sound_call gbs_gen1_titlescreen_Ch1.sub2
	sound_call gbs_gen1_titlescreen_Ch1.sub1
	octave 3
	note C_, 8
	note_type 8, 12, 6
	note E_, 4
	note E_, 4
	note C_, 4
	note_type 12, 12, 6
	octave 2
	note B_, 8
	note_type 8, 14, 7
	octave 3
	note F_, 4
	note E_, 4
	note C_, 4
	note_type 12, 14, 7
	note D_, 10
	note_type 12, 12, 6
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note D_, 2
	sound_call gbs_gen1_titlescreen_Ch1.sub1
	sound_call gbs_gen1_titlescreen_Ch1.sub2
	sound_call gbs_gen1_titlescreen_Ch1.sub1
	note C_, 6
	note C_, 6
	note E_, 4
	note D_, 6
	note F_, 2
	note G_, 2
	note D_, 4
	note G_, 2
	note G_, 6
	note A_, 4
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note D_, 12
	note E_, 4
	note F_, 8
	note G_, 4
	note F_, 4
	note E_, 12
	note F_, 4
	note G_, 8
	note_type 12, 11, 6
	octave 4
	note C_, 4
	note Cs, 4
	sound_call gbs_gen1_titlescreen_Ch1.sub3
	note_type 8, 11, 4
	octave 4
	note C_, 4
	note C_, 4
	note Cs, 4
	sound_call gbs_gen1_titlescreen_Ch1.sub3
	note_type 8, 11, 2
	octave 3
	note E_, 4
	note E_, 4
	note Cs, 4
	sound_loop 0, gbs_gen1_titlescreen_Ch1.mainloop

gbs_gen1_titlescreen_Ch1.sub1:
	note_type 12, 12, 6
	octave 3
	note D_, 6
	octave 2
	note B_, 2
	octave 3
	note D_, 8
	sound_ret

gbs_gen1_titlescreen_Ch1.sub2:
	note C_, 6
	note F_, 6
	note C_, 4
	note D_, 8
	note_type 12, 14, 7
	note F_, 6
	note E_, 1
	note Ds, 1
	note D_, 8
	note_type 8, 12, 6
	note C_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 4
	sound_ret

gbs_gen1_titlescreen_Ch1.sub3:
	note_type 12, 12, 1
	note D_, 1
	rest 1
	octave 2
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	note D_, 1
	sound_ret

gbs_gen1_titlescreen_Ch2:
	gbs_switch 1
	vibrato 16, 4, 6
	duty_cycle 1
	note_type 12, 14, 1
	octave 2
	note G_, 1
	note B_, 1
	octave 3
	note D_, 1
	note Fs, 1
	note G_, 4
	note G_, 6
	note G_, 1
	note G_, 1
	note G_, 4
	note G_, 4
	note G_, 4
	note_type 8, 14, 1
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note Fs, 2
gbs_gen1_titlescreen_Ch2.mainloop:
	vibrato 16, 4, 6
	sound_call gbs_gen1_titlescreen_Ch2.sub1
	octave 2
	note A_, 4
	note F_, 4
	sound_call gbs_gen1_titlescreen_Ch2.sub2
	octave 2
	note A_, 8
	note B_, 16
	sound_call gbs_gen1_titlescreen_Ch2.sub1
	octave 2
	note A_, 6
	note F_, 2
	note_type 8, 14, 7
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note C_, 4
	note_type 12, 14, 7
	note D_, 8
	note_type 12, 9, 5
	octave 2
	note D_, 6
	note D_, 1
	note Fs, 1
	note G_, 16
	sound_call gbs_gen1_titlescreen_Ch2.sub1
	octave 2
	note A_, 2
	note F_, 6
	sound_call gbs_gen1_titlescreen_Ch2.sub2
	octave 3
	note C_, 2
	octave 2
	note A_, 6
	note B_, 6
	note G_, 2
	note F_, 8
	sound_call gbs_gen1_titlescreen_Ch2.sub1
	note_type 8, 9, 5
	octave 2
	note G_, 4
	note F_, 5
	note A_, 3
	note_type 8, 14, 6
	octave 4
	note F_, 4
	note E_, 4
	note F_, 4
	note_type 12, 14, 7
	note G_, 6
	note As, 2
	note G_, 8
	vibrato 16, 2, 6
	duty_cycle 3
	note_type 12, 0, -3
	note G_, 8
	note_type 12, 14, 7
	note A_, 8
	duty_cycle 1
	note_type 12, 14, 7
	note As, 6
	note F_, 2
	note F_, 8
	octave 3
	note D_, 8
	octave 4
	note As, 4
	note B_, 4
	octave 5
	note C_, 6
	octave 4
	note G_, 2
	note G_, 8
	octave 3
	note E_, 8
	note_type 12, 13, 7
	octave 5
	note C_, 4
	note Cs, 4
	sound_call gbs_gen1_titlescreen_Ch2.sub3
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	note_type 8, 14, 5
	octave 5
	note C_, 4
	note C_, 4
	note Cs, 4
	sound_call gbs_gen1_titlescreen_Ch2.sub3
	note D_, 1
	rest 2
	note D_, 1
	rest 3
	note D_, 1
	note_type 8, 14, 3
	octave 5
	note C_, 4
	note C_, 4
	octave 4
	note B_, 4
	sound_loop 0, gbs_gen1_titlescreen_Ch2.mainloop

gbs_gen1_titlescreen_Ch2.sub1:
	note_type 12, 14, 7
	octave 3
	note G_, 6
	note B_, 2
	octave 4
	note D_, 8
	note_type 12, 9, 5
	sound_ret

gbs_gen1_titlescreen_Ch2.sub2:
	note_type 12, 14, 7
	octave 4
	note F_, 6
	note E_, 1
	note Ds, 1
	note D_, 8
	note_type 12, 9, 5
	sound_ret

gbs_gen1_titlescreen_Ch2.sub3:
	note_type 12, 14, 1
	note D_, 1
	rest 2
	octave 4
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	sound_ret

gbs_gen1_titlescreen_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	octave 3
	note G_, 1
	rest 1
	note D_, 1
	rest 1
	note G_, 1
	rest 3
	note G_, 1
	rest 5
	note G_, 1
	note G_, 1
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note_type 8, 1, 0
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note A_, 2
gbs_gen1_titlescreen_Ch3.mainloop:
	sound_call gbs_gen1_titlescreen_Ch3.sub1
	sound_call gbs_gen1_titlescreen_Ch3.sub2
gbs_gen1_titlescreen_Ch3.loop1:
	sound_call gbs_gen1_titlescreen_Ch3.sub1
	sound_call gbs_gen1_titlescreen_Ch3.sub1
	sound_call gbs_gen1_titlescreen_Ch3.sub1
	sound_call gbs_gen1_titlescreen_Ch3.sub2
	sound_loop 3, gbs_gen1_titlescreen_Ch3.loop1
	sound_call gbs_gen1_titlescreen_Ch3.sub1
	note G_, 6
	note D_, 3
	note A_, 6
	note F_, 3
	note A_, 3
	note F_, 3
	sound_call gbs_gen1_titlescreen_Ch3.sub3
	note As, 3
	note F_, 3
	sound_call gbs_gen1_titlescreen_Ch3.sub3
	note B_, 3
	note G_, 3
	sound_call gbs_gen1_titlescreen_Ch3.sub4
	octave 4
	note C_, 3
	octave 3
	note G_, 3
	sound_call gbs_gen1_titlescreen_Ch3.sub4
	octave 4
	note Cs, 3
	octave 3
	note A_, 3
	sound_call gbs_gen1_titlescreen_Ch3.sub5
	octave 5
	pitch_slide 1, 4, D_
	note D_, 4
	rest 4
	octave 6
	pitch_slide 1, 5, D_
	note D_, 4
	octave 5
	pitch_slide 1, 4, D_
	note D_, 4
	rest 2
	note_type 8, 1, 0
	octave 4
	note C_, 4
	note C_, 4
	note Cs, 4
	sound_call gbs_gen1_titlescreen_Ch3.sub5
	octave 6
	pitch_slide 1, 5, D_
	note D_, 4
	rest 4
	octave 5
	pitch_slide 1, 4, D_
	note D_, 4
	rest 6
	note_type 8, 1, 0
	octave 4
	note C_, 4
	note C_, 4
	octave 3
	note B_, 4
	sound_loop 0, gbs_gen1_titlescreen_Ch3.mainloop

gbs_gen1_titlescreen_Ch3.sub1:
	note G_, 6
	note D_, 3
	note G_, 6
	note D_, 3
	note G_, 3
	note D_, 3
	sound_ret

gbs_gen1_titlescreen_Ch3.sub2:
	note F_, 6
	note C_, 3
	note F_, 6
	note C_, 3
	note F_, 3
	note C_, 3
	sound_ret

gbs_gen1_titlescreen_Ch3.sub3:
	note As, 6
	note F_, 3
	note As, 6
	note F_, 3
	sound_ret

gbs_gen1_titlescreen_Ch3.sub4:
	octave 4
	note C_, 6
	octave 3
	note G_, 3
	octave 4
	note C_, 6
	octave 3
	note G_, 3
	sound_ret

gbs_gen1_titlescreen_Ch3.sub5:
	note_type 12, 1, 0
	octave 4
	note D_, 1
	rest 5
	sound_ret

gbs_gen1_titlescreen_Ch4:
	gbs_switch 3
	drum_speed 6
	rest 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_speed 12
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_speed 8
	drum_note 3, 2
	drum_note 4, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 2
gbs_gen1_titlescreen_Ch4.mainloop:
	drum_speed 12
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	rest 3
	sound_call gbs_gen1_titlescreen_Ch4.sub1
	sound_call gbs_gen1_titlescreen_Ch4.sub1
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	drum_note 2, 1
	sound_call gbs_gen1_titlescreen_Ch4.sub2
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 1
	drum_note 2, 1
	rest 1
	sound_call gbs_gen1_titlescreen_Ch4.sub2
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 1
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_speed 12
	sound_call gbs_gen1_titlescreen_Ch4.sub1
	sound_call gbs_gen1_titlescreen_Ch4.sub2
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	rest 1
	drum_note 3, 1
	drum_note 2, 1
	sound_call gbs_gen1_titlescreen_Ch4.sub1
	sound_call gbs_gen1_titlescreen_Ch4.sub2
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	rest 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 3
	drum_note 3, 1
	rest 5
	drum_note 2, 1
	drum_note 4, 1
	drum_note 2, 1
	rest 1
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_speed 12
	drum_note 1, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 3, 1
	drum_note 2, 1
	drum_note 1, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 3, 1
	rest 5
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	rest 3
	drum_note 2, 1
	rest 3
	drum_note 3, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 4, 1
	rest 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	rest 3
	drum_note 3, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 3
	drum_note 5, 1
	rest 5
	drum_note 2, 1
	rest 3
	drum_note 3, 1
	drum_note 2, 1
	drum_note 1, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 1
	drum_note 1, 1
	rest 1
	drum_speed 8
	drum_note 2, 4
	drum_note 3, 4
	drum_note 1, 4
	drum_speed 12
	drum_note 5, 1
	rest 5
	drum_note 2, 1
	rest 3
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 1, 1
	rest 1
	drum_note 3, 1
	drum_note 2, 1
	drum_speed 8
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 4
	sound_loop 0, gbs_gen1_titlescreen_Ch4.mainloop

gbs_gen1_titlescreen_Ch4.sub1:
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	rest 3
	sound_ret

gbs_gen1_titlescreen_Ch4.sub2:
	drum_note 2, 1
	rest 3
	drum_note 2, 1
	rest 5
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	rest 3
	sound_ret

	.align 4
	.global gbs_gen1_titlescreen_Header
gbs_gen1_titlescreen_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_titlescreen_Ch1
	.int gbs_gen1_titlescreen_Ch2
	.int gbs_gen1_titlescreen_Ch3
	.int gbs_gen1_titlescreen_Ch4
