	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_dungeon2_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	duty_cycle 3
	pitch_offset 1	@ Gen 1 perfect pitch
	vibrato 10, 1, 4
gbs_gen1_dungeon2_Ch1.mainloop:
gbs_gen1_dungeon2_Ch1.loop1:
	note_type 12, 11, 2
	octave 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	octave 5
	note Cs, 4
	note Cs, 4
	note Cs, 4
	note Cs, 4
	octave 3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	octave 2
	note G_, 2
	note As, 4
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note As, 2
	note B_, 2
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note A_, 4
	note Fs, 2
	sound_loop 2, gbs_gen1_dungeon2_Ch1.loop1
	note_type 12, 1, -7
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note As, 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, gbs_gen1_dungeon2_Ch1.mainloop

gbs_gen1_dungeon2_Ch2:
	gbs_switch 1
	vibrato 11, 1, 5
gbs_gen1_dungeon2_Ch2.mainloop:
gbs_gen1_dungeon2_Ch2.loop1:
	duty_cycle 3
	note_type 12, 12, 2
	octave 3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	octave 4
	note Fs, 4
	note Fs, 4
	note Fs, 4
	note Fs, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note Fs, 4
	sound_loop 2, gbs_gen1_dungeon2_Ch2.loop1
	octave 3
	note E_, 2
	note G_, 2
	note E_, 2
	note Ds, 2
	note E_, 2
	note E_, 2
	octave 5
	note E_, 2
	rest 2
	note Ds, 2
	rest 2
	note D_, 2
	rest 2
	note Cs, 2
	note C_, 2
	octave 4
	note E_, 2
	note G_, 2
	octave 3
	note As, 2
	note Cs, 2
	note As, 2
	note A_, 2
	note As, 2
	note G_, 2
	octave 5
	note G_, 2
	rest 2
	note Fs, 2
	rest 2
	note F_, 2
	rest 2
	note E_, 2
	note Ds, 2
	note D_, 2
	note Cs, 2
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 12, 7
	duty_cycle 1
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note D_, 16
	sound_loop 0, gbs_gen1_dungeon2_Ch2.mainloop

gbs_gen1_dungeon2_Ch3:
	gbs_switch 2
	note_type 12, 1, 3
	vibrato 8, 2, 6
gbs_gen1_dungeon2_Ch3.mainloop:
gbs_gen1_dungeon2_Ch3.loop1:
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_loop 16, gbs_gen1_dungeon2_Ch3.loop1
	note E_, 4
	rest 4
	rest 4
	note E_, 4
	note C_, 4
	rest 4
	rest 4
	note C_, 4
	note D_, 4
	rest 4
	rest 4
	note D_, 4
	octave 3
	note As, 4
	rest 4
	rest 4
	note As, 4
gbs_gen1_dungeon2_Ch3.loop2:
	octave 5
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	note As, 2
	rest 2
	octave 6
	note D_, 2
	rest 2
	note Cs, 2
	rest 2
	octave 5
	note Gs, 2
	rest 2
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note As, 2
	rest 2
	note E_, 2
	rest 2
	note Ds, 2
	rest 2
	note A_, 2
	rest 2
	note Gs, 2
	rest 2
	note E_, 2
	rest 2
	note Fs, 2
	rest 2
	note Ds, 2
	rest 2
	sound_loop 3, gbs_gen1_dungeon2_Ch3.loop2
	octave 4
	note E_, 4
	note B_, 4
	note As, 4
	octave 5
	note D_, 4
	note Cs, 4
	octave 4
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
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note As, 16
	octave 3
	note E_, 16
	note F_, 16
	note G_, 16
	octave 3
	note B_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_call gbs_gen1_dungeon2_Ch3.sub2
	sound_loop 0, gbs_gen1_dungeon2_Ch3.mainloop

	gbs_gen1_dungeon2_Ch3.sub1: 
	octave 2
	note G_, 2
	note As, 4
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note A_, 2
	note As, 2
	note G_, 2
	octave 3
	note Cs, 4
	octave 2
	note G_, 2
	note As, 2
	note G_, 2
	rest 2
	sound_ret

gbs_gen1_dungeon2_Ch3.sub2:
	octave 4
	note E_, 2
	rest 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	octave 4
	note Fs, 4
	sound_ret

gbs_gen1_dungeon2_Ch4:
	gbs_switch 3
	drum_speed 12
gbs_gen1_dungeon2_Ch4.mainloop:
	drum_note 12, 4
	drum_note 13, 4
	drum_note 12, 4
	drum_note 10, 4
	drum_note 12, 4
	drum_note 13, 4
	drum_note 11, 4
	drum_note 9, 4
	sound_loop 0, gbs_gen1_dungeon2_Ch4.mainloop

	.align 4
	.global gbs_gen1_dungeon2_Header
gbs_gen1_dungeon2_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_dungeon2_Ch1
	.int gbs_gen1_dungeon2_Ch2
	.int gbs_gen1_dungeon2_Ch3
	.int gbs_gen1_dungeon2_Ch4
