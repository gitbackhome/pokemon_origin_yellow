	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_dungeon3_Ch1:
	gbs_switch 0
	tempo 160
	volume 7, 7
	duty_cycle 3
	pitch_offset 1	@ Gen 1 perfect pitch
	vibrato 8, 1, 4
gbs_dungeon3_Ch1.mainloop:
	note_type 12, 12, 3
gbs_dungeon3_Ch1.loop1:
	sound_call gbs_dungeon3_Ch1.sub1
	sound_loop 3, gbs_dungeon3_Ch1.loop1
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	note Ds, 2
	note E_, 2
gbs_dungeon3_Ch1.loop2:
	sound_call gbs_dungeon3_Ch1.sub2
	sound_loop 4, gbs_dungeon3_Ch1.loop2
gbs_dungeon3_Ch1.loop3:
	sound_call gbs_dungeon3_Ch1.sub1
	sound_loop 4, gbs_dungeon3_Ch1.loop3
	octave 4
	note F_, 2
	note F_, 2
	rest 2
	note F_, 2
	note E_, 2
	note E_, 2
	note Ds, 2
	note Ds, 2
	rest 2
	note Ds, 2
	note D_, 2
	note D_, 2
	sound_call gbs_dungeon3_Ch1.sub7
	octave 4
	note D_, 2
	note D_, 2
	rest 2
	note D_, 2
	note Ds, 2
	note Ds, 2
	note E_, 2
	note E_, 2
	rest 2
	note E_, 2
	note F_, 2
	note F_, 2
gbs_dungeon3_Ch1.loop4:
	sound_call gbs_dungeon3_Ch1.sub3
	sound_loop 4, gbs_dungeon3_Ch1.loop4
gbs_dungeon3_Ch1.loop5:
	sound_call gbs_dungeon3_Ch1.sub4
	sound_loop 3, gbs_dungeon3_Ch1.loop5
	octave 3
	note Cs, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note Cs, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note F_, 2
	note Gs, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note Gs, 2
	note E_, 2
	octave 4
	note C_, 2
	sound_call gbs_dungeon3_Ch1.sub5
	sound_call gbs_dungeon3_Ch1.sub5
	octave 3
	note Gs, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note Gs, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note Gs, 2
	note E_, 2
	rest 16
	rest 8
	sound_call gbs_dungeon3_Ch1.sub6
	sound_call gbs_dungeon3_Ch1.sub6
	sound_call gbs_dungeon3_Ch1.sub6
	sound_call gbs_dungeon3_Ch1.sub6
	note Ds, 2
	rest 16
	rest 16
	sound_loop 0, gbs_dungeon3_Ch1.mainloop

gbs_dungeon3_Ch1.sub1:
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	sound_ret

gbs_dungeon3_Ch1.sub2:
	note E_, 2
	note Gs, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note Gs, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note Gs, 2
	sound_ret

gbs_dungeon3_Ch1.sub3:
	octave 3
	note Ds, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note Ds, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note Ds, 2
	octave 2
	note B_, 2
	sound_ret

gbs_dungeon3_Ch1.sub4:
	note A_, 2
	note F_, 2
	octave 3
	note Cs, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note Cs, 2
	octave 2
	note A_, 2
	note F_, 2
	sound_ret

gbs_dungeon3_Ch1.sub5:
	octave 3
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note Gs, 2
	note E_, 2
	octave 4
	note C_, 2
	sound_ret

gbs_dungeon3_Ch1.sub6:
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	sound_ret

gbs_dungeon3_Ch1.sub7:
	tempo 168
	octave 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	tempo 176
	octave 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	tempo 184
	octave 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	tempo 192
	octave 1
	note A_, 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	tempo 200
	octave 1
	note Gs, 1
	note A_, 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	tempo 208
	octave 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	note Cs, 1
	note D_, 1
	tempo 216
	octave 1
	note Fs, 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	note Cs, 1
	tempo 224
	octave 1
	note F_, 1
	note Fs, 1
	note G_, 1
	note Gs, 1
	note A_, 1
	note As, 1
	note B_, 1
	octave 2
	note C_, 1
	tempo 160
	sound_ret

gbs_dungeon3_Ch2:
	gbs_switch 1
	vibrato 11, 1, 5
	duty_cycle 3
gbs_dungeon3_Ch2.mainloop:
	note_type 12, 13, 3
	octave 4
	note Ds, 6
	note Cs, 6
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	octave 3
	note B_, 2
	note As, 2
	note B_, 6
	octave 4
	note Cs, 8
	rest 2
	note Gs, 6
	note Fs, 6
	note E_, 2
	note Fs, 2
	note Gs, 2
	octave 5
	note C_, 2
	octave 4
	note Gs, 2
	note Fs, 6
	note E_, 2
	note Fs, 2
	note Gs, 2
	octave 5
	note C_, 2
	octave 4
	note Gs, 2
	note Fs, 6
	note E_, 2
	note Ds, 2
	note E_, 6
	note Fs, 6
	note E_, 4
	note Ds, 6
	note Cs, 6
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	octave 3
	note B_, 2
	note As, 2
	note B_, 6
	octave 4
	note Cs, 8
	rest 2
	note Gs, 2
	note Gs, 2
	rest 2
	note Gs, 2
	note A_, 2
	note A_, 2
	note As, 2
	note As, 2
	rest 2
	note As, 2
	note B_, 2
	note B_, 2
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	octave 4
	note B_, 2
	note B_, 2
	rest 2
	note B_, 2
	note As, 2
	note As, 2
	note A_, 2
	note A_, 2
	rest 2
	note A_, 2
	note Gs, 2
	note Gs, 2
	note Cs, 8
	rest 2
	octave 3
	note B_, 6
	note As, 2
	note B_, 2
	octave 4
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note Ds, 6
	note G_, 6
	octave 3
	note G_, 8
	rest 2
	note F_, 6
	note E_, 2
	note F_, 2
	note A_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note G_, 6
	note F_, 2
	note G_, 2
	note A_, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	note G_, 6
	note A_, 6
	octave 4
	note Cs, 6
	note G_, 8
	rest 2
	note F_, 6
	note E_, 2
	note F_, 2
	note A_, 2
	octave 5
	note Cs, 2
	octave 4
	note A_, 2
	note G_, 6
	note A_, 2
	octave 5
	note Cs, 2
	octave 4
	note A_, 2
	note G_, 6
	note A_, 6
	octave 5
	note Cs, 6
	octave 4
	note Fs, 8
	rest 2
	note E_, 6
	note Ds, 2
	note E_, 2
	note Gs, 2
	octave 5
	note C_, 2
	octave 4
	note Gs, 2
	note Fs, 6
	note E_, 2
	note Fs, 2
	note Gs, 2
	octave 5
	note C_, 2
	octave 4
	note Gs, 2
	note Fs, 6
	note Gs, 6
	octave 5
	note C_, 6
	octave 3
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	note Ds, 2
	note G_, 2
	note Ds, 2
	note Cs, 6
	octave 2
	note E_, 2
	note Gs, 2
	octave 3
	note C_, 2
	note E_, 2
	note Gs, 2
	octave 4
	note C_, 2
	note E_, 2
	note Gs, 2
	note C_, 2
	note E_, 2
	note Gs, 2
	note C_, 2
	note E_, 2
	note Gs, 2
	note C_, 2
	note E_, 2
	note Gs, 2
	note C_, 2
	note E_, 2
	note Gs, 2
	note C_, 2
	note E_, 2
	note Gs, 2
	note C_, 2
	note Ds, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	sound_loop 0, gbs_dungeon3_Ch2.mainloop

gbs_dungeon3_Ch3:
	gbs_switch 2
gbs_dungeon3_Ch3.mainloop:
	note_type 12, 1, 2
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 12
	note_type 6, 1, 0
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	rest 2
	note C_, 1
	note Cs, 1
	note D_, 1
	note Ds, 1
	note E_, 1
	note F_, 1
	rest 16
	rest 16
	rest 10
	octave 5
	note E_, 8
	octave 4
	note B_, 8
	octave 5
	note Ds, 8
	octave 4
	note As, 8
	octave 5
	note D_, 8
	octave 4
	note A_, 8
	octave 5
	note Cs, 8
	octave 4
	note Gs, 8
	octave 5
	note C_, 8
	octave 4
	note G_, 8
	note B_, 8
	note Fs, 8
	note As, 8
	note F_, 8
	note A_, 8
	note E_, 8
	rest 16
	rest 16
	rest 8
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	rest 2
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	octave 3
	note B_, 1
	rest 10
	rest 16
	note_type 12, 1, 0
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 10
	sound_loop 0, gbs_dungeon3_Ch3.mainloop

gbs_dungeon3_Ch4:
	gbs_switch 3
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 10
	sound_ret

	.align 4
	.global gbs_dungeon3_Header
gbs_dungeon3_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_dungeon3_Ch1
	.int gbs_dungeon3_Ch2
	.int gbs_dungeon3_Ch3
	.int gbs_dungeon3_Ch4
