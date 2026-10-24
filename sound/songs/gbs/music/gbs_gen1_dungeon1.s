	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_dungeon1_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	duty_cycle 3
	pitch_offset 1	@ Gen 1 perfect pitch
	vibrato 10, 1, 4
	note_type 12, 4, -5
	rest 8
	octave 4
	note Fs, 8
gbs_gen1_dungeon1_Ch1.mainloop:
	note_type 12, 11, 2
	octave 3
gbs_gen1_dungeon1_Ch1.loop1:
	sound_call gbs_gen1_dungeon1_Ch1.sub1
	sound_loop 3, gbs_gen1_dungeon1_Ch1.loop1
	note E_, 1
	note Ds, 1
	note B_, 1
	note As, 1
	note G_, 1
	note Gs, 1
	rest 1
	note As, 1
	note E_, 1
	note Ds, 1
	note B_, 1
	note As, 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note As, 1
gbs_gen1_dungeon1_Ch1.loop2:
	sound_call gbs_gen1_dungeon1_Ch1.sub1
	sound_loop 4, gbs_gen1_dungeon1_Ch1.loop2
	sound_call gbs_gen1_dungeon1_Ch1.sub4
	octave 3
	note G_, 1
	note Fs, 1
	note E_, 1
	note G_, 1
	sound_call gbs_gen1_dungeon1_Ch1.sub4
	octave 3
	note A_, 1
	note G_, 1
	note E_, 1
	note A_, 1
	sound_call gbs_gen1_dungeon1_Ch1.sub4
	octave 3
	note B_, 1
	note A_, 1
	note G_, 1
	note Fs, 1
	note_type 12, 12, 3
	note G_, 4
	note Fs, 4
	note E_, 4
	note Ds, 4
	note_type 12, 12, 2
	sound_call gbs_gen1_dungeon1_Ch1.sub3
	octave 3
	note B_, 3
	sound_call gbs_gen1_dungeon1_Ch1.sub3
	note C_, 3
	sound_call gbs_gen1_dungeon1_Ch1.sub3
	note Cs, 3
	note_type 12, 12, 3
	octave 3
	note G_, 4
	note Fs, 4
	note E_, 4
	note Ds, 4
	note E_, 4
	note Ds, 4
	note C_, 4
	octave 2
	note B_, 4
	note_type 12, 12, 2
	note B_, 1
	note As, 1
	note G_, 1
	note As, 1
	note B_, 1
	note As, 1
	note G_, 1
	note As, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note Gs, 1
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note Gs, 1
	note B_, 1
	octave 3
	note Cs, 1
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note C_, 1
	note Cs, 1
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note C_, 1
	note D_, 1
	note Cs, 1
	octave 2
	note As, 1
	octave 3
	note Cs, 1
	note D_, 1
	note Cs, 1
	octave 2
	note As, 1
	octave 3
	note Cs, 1
gbs_gen1_dungeon1_Ch1.loop3:
	rest 16
	sound_loop 8, gbs_gen1_dungeon1_Ch1.loop3
	note_type 12, 12, 3
	sound_call gbs_gen1_dungeon1_Ch1.sub2
	note B_, 2
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note A_, 4
	note Fs, 2
	sound_call gbs_gen1_dungeon1_Ch1.sub2
	note As, 2
	note G_, 2
	note B_, 4
	note G_, 2
	note Fs, 2
	note G_, 2
	note Ds, 2
	note_type 12, 12, 2
	sound_call gbs_gen1_dungeon1_Ch1.sub3
	octave 3
	note B_, 3
	sound_call gbs_gen1_dungeon1_Ch1.sub3
	note C_, 3
	sound_call gbs_gen1_dungeon1_Ch1.sub3
	note Cs, 3
	note_type 12, 12, 7
	octave 3
	note Fs, 8
	note Ds, 8
	note_type 12, 12, 2
	sound_call gbs_gen1_dungeon1_Ch1.sub1
	sound_call gbs_gen1_dungeon1_Ch1.sub1
	sound_loop 0, gbs_gen1_dungeon1_Ch1.mainloop

gbs_gen1_dungeon1_Ch1.sub1:
	note E_, 1
	note Ds, 1
	note B_, 1
	note As, 1
	note G_, 1
	note Gs, 1
	rest 1
	note As, 1
	note E_, 1
	note Ds, 1
	note B_, 1
	note As, 1
	note G_, 1
	note Gs, 1
	rest 1
	note As, 1
	sound_ret

gbs_gen1_dungeon1_Ch1.sub2:
	octave 2
	note G_, 2
	note As, 4
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note As, 2
	sound_ret

gbs_gen1_dungeon1_Ch1.sub3:
	octave 3
	note E_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note G_, 1
	note E_, 1
	note A_, 1
	note E_, 1
	note As, 1
	note E_, 1
	note B_, 1
	note E_, 1
	octave 4
	note C_, 1
	sound_ret

gbs_gen1_dungeon1_Ch1.sub4:
	note E_, 1
	note E_, 1
	rest 4
	octave 1
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	sound_ret

gbs_gen1_dungeon1_Ch2:
	gbs_switch 1
	vibrato 11, 1, 5
	duty_cycle 3
	note_type 12, 0, -7
	octave 4
	note Gs, 8
	note_type 12, 4, -5
	octave 5
	note D_, 8
gbs_gen1_dungeon1_Ch2.mainloop:
	note_type 12, 12, 2
gbs_gen1_dungeon1_Ch2.loop1:
	sound_call gbs_gen1_dungeon1_Ch2.sub1
	sound_loop 3, gbs_gen1_dungeon1_Ch2.loop1
	octave 2
	note E_, 1
	note E_, 1
	note B_, 1
	octave 3
	note C_, 1
	rest 2
	note C_, 1
	octave 2
	note B_, 1
	note E_, 1
	note E_, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Ds, 1
gbs_gen1_dungeon1_Ch2.loop2:
	sound_call gbs_gen1_dungeon1_Ch2.sub1
	sound_loop 4, gbs_gen1_dungeon1_Ch2.loop2
	rest 2
	sound_call gbs_gen1_dungeon1_Ch2.sub2
	octave 3
	note C_, 4
	sound_call gbs_gen1_dungeon1_Ch2.sub2
	octave 3
	note Cs, 4
	sound_call gbs_gen1_dungeon1_Ch2.sub2
	octave 3
	note Ds, 4
	note_type 12, 13, 3
	octave 4
	note E_, 4
	note Ds, 4
	note C_, 4
	octave 3
	note B_, 4
	note_type 12, 13, 2
	sound_call gbs_gen1_dungeon1_Ch2.sub3
	octave 3
	note Fs, 4
	sound_call gbs_gen1_dungeon1_Ch2.sub3
	octave 3
	note G_, 4
	sound_call gbs_gen1_dungeon1_Ch2.sub3
	octave 3
	note As, 4
	note_type 12, 13, 3
	octave 4
	note E_, 4
	note Ds, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note G_, 4
	note Fs, 2
	note_type 12, 13, 6
	note E_, 8
	note F_, 8
	note Fs, 8
	note G_, 8
	note_type 12, 13, 2
	sound_call gbs_gen1_dungeon1_Ch2.sub4
	rest 10
	note E_, 1
	rest 1
	sound_call gbs_gen1_dungeon1_Ch2.sub4
	rest 12
	sound_call gbs_gen1_dungeon1_Ch2.sub4
	rest 12
	sound_call gbs_gen1_dungeon1_Ch2.sub4
	rest 14
	note_type 12, 13, 3
	sound_call gbs_gen1_dungeon1_Ch2.sub6
	note Ds, 4
	sound_call gbs_gen1_dungeon1_Ch2.sub6
	note Ds, 2
	rest 2
	note_type 12, 13, 2
	sound_call gbs_gen1_dungeon1_Ch2.sub5
	rest 2
	octave 3
	note Fs, 4
	octave 2
	note E_, 1
	note E_, 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	note Cs, 1
	rest 1
	note D_, 1
	note Cs, 1
	rest 2
	octave 3
	note G_, 4
	sound_call gbs_gen1_dungeon1_Ch2.sub5
	octave 3
	note As, 4
	note_type 12, 13, 6
	note B_, 8
	octave 4
	note Ds, 8
	note_type 12, 13, 2
	sound_call gbs_gen1_dungeon1_Ch2.sub1
	sound_call gbs_gen1_dungeon1_Ch2.sub1
	sound_loop 0, gbs_gen1_dungeon1_Ch2.mainloop

gbs_gen1_dungeon1_Ch2.sub1:
	octave 2
	note E_, 1
	note E_, 1
	note B_, 1
	octave 3
	note C_, 1
	rest 2
	note C_, 1
	octave 2
	note B_, 1
	note E_, 1
	note E_, 1
	note B_, 1
	octave 3
	note C_, 1
	rest 2
	note C_, 1
	octave 2
	note B_, 1
	sound_ret

gbs_gen1_dungeon1_Ch2.sub2:
	octave 2
	note E_, 1
	note E_, 1
	rest 2
	octave 1
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	sound_ret

gbs_gen1_dungeon1_Ch2.sub3:
	octave 2
	note E_, 1
	note E_, 1
	rest 10
	sound_ret

gbs_gen1_dungeon1_Ch2.sub4:
	octave 1
	note E_, 1
	note G_, 1
	note E_, 1
	note Ds, 1
	sound_ret

gbs_gen1_dungeon1_Ch2.sub5:
	octave 2
	note E_, 1
	note E_, 1
	octave 4
	note E_, 1
	rest 1
	note Ds, 1
	rest 1
	note D_, 1
	rest 1
	note Cs, 1
	note C_, 1
	sound_ret

gbs_gen1_dungeon1_Ch2.sub6:
	octave 3
	note E_, 6
	note G_, 6
	note E_, 4
	note A_, 6
	octave 4
	note C_, 6
	octave 3
	note B_, 4
	note G_, 6
	note As, 6
	note Fs, 4
	note E_, 6
	note Fs, 6
	sound_ret

gbs_gen1_dungeon1_Ch3:
	gbs_switch 2
	note_type 12, 1, 1
	vibrato 8, 2, 6
	rest 14
	octave 4
	note D_, 1
	note Ds, 1
gbs_gen1_dungeon1_Ch3.mainloop:
	sound_call gbs_gen1_dungeon1_Ch3.sub1
	sound_call gbs_gen1_dungeon1_Ch3.sub1
	octave 5
	note E_, 2
	rest 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	octave 4
	note Fs, 4
	sound_call gbs_gen1_dungeon1_Ch3.sub2
	octave 4
	note G_, 4
	sound_call gbs_gen1_dungeon1_Ch3.sub2
	octave 4
	note A_, 4
	note B_, 4
	note As, 4
	note G_, 4
	note Fs, 4
	rest 6
	sound_call gbs_gen1_dungeon1_Ch3.sub5
	note B_, 4
	note As, 4
	note G_, 4
	note Fs, 4
	note G_, 4
	note Fs, 4
	note E_, 4
	note Ds, 4
	sound_call gbs_gen1_dungeon1_Ch3.sub3
	rest 12
	sound_call gbs_gen1_dungeon1_Ch3.sub3
	rest 12
	sound_call gbs_gen1_dungeon1_Ch3.sub3
	rest 10
	note E_, 1
	rest 1
	sound_call gbs_gen1_dungeon1_Ch3.sub3
	rest 12
	sound_call gbs_gen1_dungeon1_Ch3.sub3
	rest 12
	sound_call gbs_gen1_dungeon1_Ch3.sub3
	rest 10
	note D_, 1
	note Ds, 1
	sound_call gbs_gen1_dungeon1_Ch3.sub4
	sound_call gbs_gen1_dungeon1_Ch3.sub4
	note E_, 2
	rest 4
	sound_call gbs_gen1_dungeon1_Ch3.sub5
	note B_, 8
	note Fs, 6
	note D_, 1
	note Ds, 1
	rest 16
	rest 16
	sound_loop 0, gbs_gen1_dungeon1_Ch3.mainloop

gbs_gen1_dungeon1_Ch3.sub1:
	octave 5
	note E_, 4
	note B_, 4
	note As, 4
	octave 6
	note D_, 4
	note Cs, 4
	octave 5
	note Gs, 4
	note G_, 4
	note B_, 4
	note As, 4
	note E_, 4
	note Ds, 4
	note A_, 4
	note Gs, 4
	note E_, 4
	note Fs, 4
	note Ds, 4
	sound_ret

gbs_gen1_dungeon1_Ch3.sub2:
	octave 6
	note E_, 1
	note E_, 1
	rest 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	sound_ret

gbs_gen1_dungeon1_Ch3.sub3:
	octave 3
	note E_, 1
	note G_, 1
	note E_, 1
	note Ds, 1
	sound_ret

gbs_gen1_dungeon1_Ch3.sub4:
	note E_, 4
	note B_, 4
	note As, 4
	octave 4
	note D_, 4
	note Cs, 4
	octave 3
	note Gs, 4
	note G_, 4
	note B_, 4
	note As, 4
	note E_, 4
	note Ds, 4
	note A_, 4
	note Gs, 4
	note E_, 4
	note Fs, 4
	note Ds, 4
	sound_ret

gbs_gen1_dungeon1_Ch3.sub5:
	octave 4
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	note Fs, 4
	rest 6
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	note G_, 4
	rest 6
	note E_, 1
	rest 3
	note E_, 1
	note E_, 1
	note As, 4
	sound_ret

gbs_gen1_dungeon1_Ch4:
	gbs_switch 3
	drum_speed 12
	rest 14
	drum_note 12, 1
	drum_note 12, 1
gbs_gen1_dungeon1_Ch4.mainloop:
gbs_gen1_dungeon1_Ch4.loop1:
	sound_call gbs_gen1_dungeon1_Ch4.sub1
	sound_loop 3, gbs_gen1_dungeon1_Ch4.loop1
	drum_note 13, 4
	drum_note 12, 4
	drum_note 13, 4
	drum_note 12, 2
	drum_note 12, 2
gbs_gen1_dungeon1_Ch4.loop2:
	sound_call gbs_gen1_dungeon1_Ch4.sub1
	sound_loop 3, gbs_gen1_dungeon1_Ch4.loop2
	drum_note 13, 4
	drum_note 12, 4
	drum_note 13, 4
	drum_note 13, 4
gbs_gen1_dungeon1_Ch4.loop3:
	sound_call gbs_gen1_dungeon1_Ch4.sub2
	sound_loop 3, gbs_gen1_dungeon1_Ch4.loop3
	sound_call gbs_gen1_dungeon1_Ch4.sub3
gbs_gen1_dungeon1_Ch4.loop4:
	sound_call gbs_gen1_dungeon1_Ch4.sub2
	sound_loop 3, gbs_gen1_dungeon1_Ch4.loop4
	sound_call gbs_gen1_dungeon1_Ch4.sub3
	drum_note 9, 4
	drum_note 10, 4
	drum_note 10, 4
	rest 2
	drum_note 9, 2
	drum_note 13, 4
gbs_gen1_dungeon1_Ch4.loop5:
	rest 16
	sound_loop 13, gbs_gen1_dungeon1_Ch4.loop5
	rest 12
gbs_gen1_dungeon1_Ch4.loop6:
	sound_call gbs_gen1_dungeon1_Ch4.sub2
	sound_loop 3, gbs_gen1_dungeon1_Ch4.loop6
	drum_note 12, 4
	drum_note 12, 4
	drum_note 12, 4
	rest 2
	drum_note 12, 1
	drum_note 12, 1
	sound_call gbs_gen1_dungeon1_Ch4.sub1
	sound_call gbs_gen1_dungeon1_Ch4.sub1
	sound_loop 0, gbs_gen1_dungeon1_Ch4.mainloop

gbs_gen1_dungeon1_Ch4.sub1:
	drum_note 13, 4
	drum_note 12, 4
	drum_note 13, 4
	drum_note 12, 4
	sound_ret

gbs_gen1_dungeon1_Ch4.sub2:
	drum_note 12, 1
	drum_note 12, 1
	rest 10
	drum_note 14, 4
	sound_ret

gbs_gen1_dungeon1_Ch4.sub3:
	drum_note 9, 4
	drum_note 10, 4
	drum_note 10, 4
	drum_note 11, 4
	sound_ret

	.align 4
	.global gbs_gen1_dungeon1_Header
gbs_gen1_dungeon1_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_dungeon1_Ch1
	.int gbs_gen1_dungeon1_Ch2
	.int gbs_gen1_dungeon1_Ch3
	.int gbs_gen1_dungeon1_Ch4
