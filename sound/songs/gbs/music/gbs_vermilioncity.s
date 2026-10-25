	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_vermilioncity_Ch1:
	gbs_switch 0
	tempo 156
	volume 7, 7
	duty_cycle 3
	vibrato 12, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
gbs_vermilioncity_Ch1.mainloop:
	note_type 12, 11, 5
	octave 3
	note E_, 4
	note Cs, 1
	note D_, 1
	note E_, 2
	note A_, 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note A_, 4
	note Fs, 1
	note Gs, 1
	note A_, 2
	note E_, 4
	note Cs, 2
	note E_, 2
	note A_, 2
	note Gs, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note Cs, 2
	note D_, 2
	note E_, 2
	note Fs, 2
	note E_, 4
	note Cs, 1
	note D_, 1
	note E_, 2
	note A_, 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note A_, 4
	note Fs, 1
	note Gs, 1
	note A_, 2
	note E_, 4
	note Cs, 1
	note D_, 1
	note E_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note A_, 2
	note Gs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note Fs, 4
	note E_, 4
	note Fs, 2
	note Gs, 2
	note Fs, 2
	note A_, 2
	note Gs, 2
	note B_, 2
	note A_, 2
	octave 4
	note Cs, 2
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 1
	note A_, 1
	note B_, 2
	octave 4
	note Cs, 2
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note Gs, 2
	octave 4
	note Cs, 2
	octave 3
	note Fs, 2
	note B_, 2
	note Gs, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note B_, 2
	sound_loop 0, gbs_vermilioncity_Ch1.mainloop

gbs_vermilioncity_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 10, 2, 3
gbs_vermilioncity_Ch2.mainloop:
	note_type 12, 12, 7
	octave 3
	note A_, 8
	octave 4
	note D_, 4
	note Cs, 4
	octave 3
	note B_, 6
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 8
	octave 3
	note A_, 8
	octave 4
	note D_, 4
	note Cs, 4
	octave 3
	note B_, 6
	octave 4
	note Cs, 1
	octave 3
	note B_, 1
	note A_, 8
	note A_, 8
	octave 4
	note D_, 4
	note Cs, 4
	octave 3
	note B_, 6
	note A_, 1
	note B_, 1
	octave 4
	note Cs, 8
	octave 3
	note A_, 8
	octave 4
	note D_, 4
	note Cs, 4
	octave 3
	note B_, 6
	octave 4
	note Cs, 1
	octave 3
	note B_, 1
	note A_, 8
	note B_, 4
	octave 4
	note Cs, 4
	note D_, 4
	note E_, 4
	note Fs, 8
	note B_, 8
	note A_, 4
	note Gs, 4
	note Fs, 4
	note E_, 4
	note Fs, 8
	note E_, 8
	sound_loop 0, gbs_vermilioncity_Ch2.mainloop

gbs_vermilioncity_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
gbs_vermilioncity_Ch3.mainloop:
	octave 4
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	sound_loop 0, gbs_vermilioncity_Ch3.mainloop

gbs_vermilioncity_Ch4:
	gbs_switch 3
	drum_speed 12
gbs_vermilioncity_Ch4.mainloop:
gbs_vermilioncity_Ch4.loop1:
	sound_call gbs_vermilioncity_Ch4.sub1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	sound_loop 4, gbs_vermilioncity_Ch4.loop1
	sound_call gbs_vermilioncity_Ch4.sub1
	sound_call gbs_vermilioncity_Ch4.sub1
	sound_call gbs_vermilioncity_Ch4.sub1
	sound_call gbs_vermilioncity_Ch4.sub1
	sound_loop 0, gbs_vermilioncity_Ch4.mainloop

gbs_vermilioncity_Ch4.sub1:
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	sound_ret

	.align 4
	.global gbs_vermilioncity_Header
gbs_vermilioncity_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_vermilioncity_Ch1
	.int gbs_vermilioncity_Ch2
	.int gbs_vermilioncity_Ch3
	.int gbs_vermilioncity_Ch4
