	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_hg_route24_Ch1:
	gbs_switch 0
	tempo 152
	volume 7, 7
	vibrato 9, 2, 5
	duty_cycle 1
gbs_hg_route24_Ch1.mainloop:
	note_type 12, 11, 2
	octave 2
	note B_, 4
	octave 3
	note Gs, 6
	note Fs, 2
	note E_, 2
	note Ds, 1
	note Fs, 1
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note A_, 2
	note Gs, 4
	note Fs, 4
	octave 2
	note B_, 4
	octave 3
	note Gs, 6
	note Fs, 2
	note E_, 2
	note Ds, 1
	note Fs, 1
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note A_, 2
	note Gs, 4
	note B_, 4
	note_type 8, 11, 2
	octave 4
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note Ds, 2
	octave 3
	note Gs, 2
	octave 4
	note Ds, 2
	note Ds, 2
	octave 3
	note Gs, 2
	octave 4
	note Ds, 2
	note Cs, 2
	octave 3
	note Fs, 2
	octave 4
	note Cs, 2
	note Cs, 2
	octave 3
	note Fs, 2
	octave 4
	note Cs, 2
	octave 3
	note B_, 2
	note E_, 2
	note B_, 2
	note B_, 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Gs, 2
	note E_, 2
	note B_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	octave 4
	note Cs, 2
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	note Fs, 2
	note E_, 2
	note Ds, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	sound_loop 0, gbs_hg_route24_Ch1.mainloop

	sound_ret 

gbs_hg_route24_Ch2:
	gbs_switch 1
	vibrato 8, 2, 6
	duty_cycle 3
gbs_hg_route24_Ch2.mainloop:
	note_type 12, 13, 4
	octave 4
	note E_, 6
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note Fs, 6
	note A_, 2
	note Gs, 3
	note E_, 1
	note Fs, 8
	octave 3
	note Ds, 4
	octave 4
	note E_, 6
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note Fs, 6
	note A_, 2
	note Gs, 3
	note E_, 1
	note B_, 8
	octave 3
	note Gs, 4
	octave 5
	note Cs, 6
	octave 4
	note B_, 1
	note A_, 1
	note B_, 6
	note A_, 1
	note Gs, 1
	note A_, 6
	note Gs, 1
	note Fs, 1
	note Gs, 4
	note Fs, 2
	note E_, 2
	note D_, 2
	note D_, 1
	note E_, 1
	note Fs, 8
	note A_, 4
	note Gs, 3
	note Fs, 1
	note E_, 8
	note Fs, 2
	note E_, 2
	note D_, 2
	note D_, 1
	note E_, 1
	note Fs, 2
	note Fs, 1
	note Gs, 1
	note A_, 4
	octave 5
	note Cs, 4
	octave 4
	note B_, 3
	note A_, 1
	note Gs, 8
	rest 4
	sound_loop 0, gbs_hg_route24_Ch2.mainloop

	sound_ret 

gbs_hg_route24_Ch3:
	gbs_switch 2
	vibrato 9, 2, 8
gbs_hg_route24_Ch3.mainloop:
	note_type 12, 1, 1
	octave 3
	note E_, 2
	rest 2
	octave 2
	note B_, 6
	octave 3
	note D_, 1
	note Cs, 1
	note D_, 2
	note Ds, 2
	note E_, 2
	rest 2
	octave 2
	note B_, 6
	octave 3
	note D_, 1
	note Cs, 1
	octave 2
	note A_, 2
	octave 3
	note Cs, 2
	note E_, 2
	rest 2
	octave 2
	note B_, 6
	octave 3
	note D_, 1
	note Cs, 1
	note D_, 2
	note Ds, 2
	note E_, 2
	rest 2
	octave 2
	note B_, 4
	octave 3
	note Cs, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note Fs, 2
	note E_, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	octave 3
	note Ds, 2
	rest 2
	octave 2
	note Gs, 2
	rest 2
	octave 3
	note Cs, 2
	rest 2
	octave 2
	note Fs, 2
	rest 2
	note B_, 2
	rest 2
	note E_, 2
	note Gs, 2
	note Fs, 2
	rest 2
	note A_, 2
	rest 2
	note Fs, 2
	rest 2
	note A_, 2
	rest 2
	note Gs, 2
	rest 2
	note B_, 2
	rest 2
	note Gs, 2
	rest 2
	note B_, 2
	rest 2
	note Fs, 2
	rest 2
	note A_, 2
	rest 2
	octave 3
	note Cs, 2
	rest 2
	octave 2
	note A_, 2
	octave 3
	note Cs, 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	note Gs, 2
	rest 2
	note E_, 2
	rest 2
	sound_loop 0, gbs_hg_route24_Ch3.mainloop

	sound_ret 

gbs_hg_route24_Ch4:
	gbs_switch 3
gbs_hg_route24_Ch4.mainloop:
	drum_speed 12
	drum_note 3, 2
	rest 2
	drum_note 3, 1
	rest 5
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 3
	drum_note 3, 3
	drum_speed 12
	drum_note 3, 1
	rest 3
	drum_note 3, 2
	rest 2
	drum_note 3, 2
	rest 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	rest 2
	drum_note 3, 2
	rest 2
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 3
	drum_note 3, 3
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 3
	rest 3
	drum_speed 12
	drum_note 3, 1
	rest 5
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 3
	rest 3
	drum_speed 12
	drum_note 3, 1
	rest 3
	drum_note 3, 2
	rest 2
	drum_note 3, 2
	rest 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 3
	rest 3
	drum_note 3, 3
	drum_note 3, 3
	drum_note 3, 3
	rest 3
	drum_speed 12
	drum_note 3, 1
	rest 5
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	rest 2
	drum_speed 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 3
	rest 3
	drum_note 3, 3
	rest 3
	sound_loop 0, gbs_hg_route24_Ch4.mainloop

	sound_ret 

	.align 4
	.global gbs_hg_route24_Header
gbs_hg_route24_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_hg_route24_Ch1
	.int gbs_hg_route24_Ch2
	.int gbs_hg_route24_Ch3
	.int gbs_hg_route24_Ch4
