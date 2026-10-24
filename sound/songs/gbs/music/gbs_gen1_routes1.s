	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_routes1_Ch1:
	gbs_switch 0
	tempo 152
	volume 7, 7
	vibrato 4, 2, 3
	duty_cycle 2
	pitch_offset 1	@ Gen 1 perfect pitch
gbs_gen1_routes1_Ch1.mainloop:
	note_type 12, 10, 1
	rest 4
	octave 4
	note D_, 2
	note D_, 6
	note D_, 2
	note D_, 6
	note D_, 2
	note D_, 1
	note Cs, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 1
	octave 3
	note A_, 2
	note A_, 2
	note A_, 6
	octave 4
	note Cs, 2
	note Cs, 6
	note Cs, 2
	note Cs, 4
	octave 3
	note A_, 2
	octave 4
	note Cs, 2
	octave 3
	note B_, 2
	octave 4
	note Cs, 4
	octave 3
	note A_, 2
	note A_, 6
	octave 4
	note D_, 2
	note D_, 6
	note D_, 2
	note D_, 6
	note D_, 2
	note D_, 1
	note E_, 1
	note D_, 1
	note Cs, 1
	octave 3
	note B_, 2
	note A_, 2
	note A_, 6
	octave 4
	note Cs, 2
	note Cs, 6
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	octave 3
	note A_, 2
	note_type 12, 10, 2
	octave 4
	note G_, 4
	note E_, 4
	note Fs, 2
	note_type 12, 10, 1
	octave 3
	note A_, 2
	note A_, 6
	note A_, 2
	note Fs, 2
	note A_, 4
	note B_, 2
	octave 4
	note Cs, 2
	octave 3
	note B_, 4
	note A_, 2
	note Fs, 2
	note A_, 4
	note G_, 2
	note E_, 2
	note Cs, 4
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 4
	note B_, 2
	note G_, 2
	note B_, 4
	octave 4
	note D_, 2
	note E_, 2
	note Cs, 2
	note D_, 2
	octave 3
	note A_, 2
	note A_, 2
	sound_loop 0, gbs_gen1_routes1_Ch1.mainloop

	sound_ret 

gbs_gen1_routes1_Ch2:
	gbs_switch 1
	duty_cycle 2
gbs_gen1_routes1_Ch2.mainloop:
	note_type 12, 13, 1
	sound_call gbs_gen1_routes1_Ch2.sub1
	sound_call gbs_gen1_routes1_Ch2.sub2
	sound_call gbs_gen1_routes1_Ch2.sub1
	sound_call gbs_gen1_routes1_Ch2.sub3
	sound_loop 0, gbs_gen1_routes1_Ch2.mainloop

gbs_gen1_routes1_Ch2.sub1:
	octave 4
	note D_, 1
	note E_, 1
	note Fs, 2
	note Fs, 2
	note Fs, 2
	note D_, 1
	note E_, 1
	note Fs, 2
	note Fs, 2
	note Fs, 2
	note D_, 1
	note E_, 1
	note Fs, 2
	note Fs, 2
	note G_, 3
	note Fs, 1
	note E_, 6
	sound_ret

gbs_gen1_routes1_Ch2.sub2:
	note Cs, 1
	note D_, 1
	note E_, 2
	note E_, 2
	note E_, 2
	note Cs, 1
	note D_, 1
	note E_, 2
	note E_, 2
	note E_, 2
	note Cs, 1
	note D_, 1
	note E_, 2
	note E_, 2
	note Fs, 1
	note E_, 1
	note E_, 1
	note Fs, 1
	note D_, 4
	note Fs, 2
	sound_ret

gbs_gen1_routes1_Ch2.sub3:
	note Cs, 1
	note D_, 1
	note E_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note_type 12, 13, 2
	note B_, 4
	note_type 6, 13, 1
	octave 3
	note B_, 1
	octave 4
	note Cs, 1
	note_type 12, 13, 1
	octave 3
	note B_, 1
	note A_, 1
	octave 4
	note Cs, 1
	note D_, 6
	note_type 12, 13, 2
	note Fs, 1
	note G_, 1
	note A_, 2
	note A_, 2
	note Fs, 2
	note D_, 2
	octave 5
	note D_, 2
	note Cs, 2
	octave 4
	note B_, 2
	octave 5
	note Cs, 2
	octave 4
	note A_, 2
	note Fs, 2
	note D_, 3
	note Fs, 1
	note E_, 6
	note Fs, 1
	note G_, 1
	note A_, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	octave 5
	note D_, 2
	note Cs, 2
	octave 4
	note B_, 3
	note G_, 1
	note A_, 2
	octave 5
	note D_, 2
	note Cs, 2
	note E_, 2
	note D_, 2
	note_type 12, 13, 1
	octave 4
	note D_, 2
	note D_, 2
	sound_ret

	sound_ret 

gbs_gen1_routes1_Ch3:
	gbs_switch 2
	vibrato 8, 2, 5
	note_type 12, 1, 3
gbs_gen1_routes1_Ch3.mainloop:
	rest 2
	octave 4
	note D_, 4
	note Cs, 4
	octave 3
	note B_, 4
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	note B_, 4
	note A_, 4
	octave 4
	note Cs, 4
	octave 3
	note A_, 4
	note B_, 4
	octave 4
	note C_, 4
	note Cs, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 4
	note Cs, 4
	octave 3
	note B_, 4
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	note B_, 4
	note A_, 4
	octave 4
	note Cs, 4
	octave 3
	note B_, 4
	note A_, 4
	note B_, 4
	octave 4
	note Cs, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 8
	octave 3
	note G_, 8
	note A_, 8
	octave 4
	note Cs, 8
	note D_, 8
	octave 3
	note G_, 8
	note A_, 8
	octave 4
	note D_, 6
	sound_loop 0, gbs_gen1_routes1_Ch3.mainloop

	sound_ret 

gbs_gen1_routes1_Ch4:
	gbs_switch 3
gbs_gen1_routes1_Ch4.mainloop:
	drum_speed 12
	rest 4
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	rest 4
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	drum_note 15, 2
	drum_note 15, 2
	rest 4
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	rest 4
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	rest 4
	drum_note 15, 2
	drum_note 15, 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	rest 4
	drum_note 15, 2
	drum_note 15, 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	rest 4
	drum_note 15, 2
	drum_note 15, 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	drum_note 15, 2
	rest 2
	drum_note 15, 2
	drum_note 15, 2
	sound_loop 0, gbs_gen1_routes1_Ch4.mainloop

	sound_ret 

	.align 4
	.global gbs_gen1_routes1_Header
gbs_gen1_routes1_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_routes1_Ch1
	.int gbs_gen1_routes1_Ch2
	.int gbs_gen1_routes1_Ch3
	.int gbs_gen1_routes1_Ch4
