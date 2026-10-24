	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_museumguy_Ch1:
	gbs_switch 0
	tempo 128
	volume 7, 7
	duty_cycle 2
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 1
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note E_, 2
	note Ds, 2
	octave 2
	note B_, 4
	note B_, 1
	octave 3
	note Ds, 1
	note E_, 1
	note Gs, 1
	note B_, 10
	sound_call gbs_gen1_museumguy_Ch1.sub1
	sound_call gbs_gen1_museumguy_Ch1.sub2
	sound_call gbs_gen1_museumguy_Ch1.sub1
	note E_, 4
	note E_, 4
	note E_, 2
	note E_, 6
gbs_gen1_museumguy_Ch1.mainloop:
	sound_call gbs_gen1_museumguy_Ch1.sub1
	sound_call gbs_gen1_museumguy_Ch1.sub2
	sound_call gbs_gen1_museumguy_Ch1.sub1
	note E_, 4
	note E_, 4
	note E_, 2
	note E_, 6
	sound_loop 0, gbs_gen1_museumguy_Ch1.mainloop

gbs_gen1_museumguy_Ch1.sub1:
	note E_, 2
	note E_, 6
	note Fs, 2
	note Fs, 6
	sound_ret

gbs_gen1_museumguy_Ch1.sub2:
	note E_, 2
	note E_, 6
	note D_, 2
	note D_, 6
	sound_ret

gbs_gen1_museumguy_Ch2:
	gbs_switch 1
	duty_cycle 2
	note_type 12, 12, 1
	octave 4
	note E_, 2
	note D_, 2
	note Cs, 2
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note E_, 4
	note E_, 1
	note Gs, 1
	note B_, 1
	octave 4
	note Ds, 1
	note E_, 8
	octave 3
	note A_, 2
	octave 4
	note Cs, 2
	note E_, 4
	note D_, 2
	note Fs, 2
	note A_, 4
	octave 3
	note A_, 2
	octave 4
	note Cs, 2
	note E_, 4
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 4
	note A_, 2
	octave 4
	note Cs, 2
	note E_, 4
	note D_, 2
	note Fs, 2
	note A_, 2
	note A_, 2
	note Gs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	note A_, 2
	note A_, 4
gbs_gen1_museumguy_Ch2.mainloop:
	octave 3
	note A_, 2
	octave 4
	note Cs, 2
	note E_, 3
	note_type 12, 8, 1
	note E_, 1
	note_type 12, 12, 1
	note D_, 2
	note Fs, 2
	note A_, 3
	note_type 12, 9, 1
	note A_, 1
	note_type 12, 12, 1
	octave 3
	note A_, 2
	octave 4
	note Cs, 2
	note E_, 4
	note D_, 1
	note Cs, 1
	note C_, 1
	octave 3
	note B_, 1
	note B_, 3
	note_type 12, 10, 1
	note Gs, 1
	note_type 12, 12, 1
	note A_, 2
	octave 4
	note Cs, 2
	note E_, 3
	note_type 12, 9, 1
	note E_, 1
	note_type 12, 12, 1
	note D_, 2
	note Fs, 2
	note A_, 3
	note_type 12, 8, 1
	note A_, 1
	note_type 12, 12, 1
	note Gs, 2
	note E_, 1
	note_type 12, 8, 1
	note E_, 1
	note_type 12, 12, 1
	note Fs, 2
	note_type 12, 8, 1
	note Fs, 1
	note_type 12, 12, 1
	note Gs, 1
	note A_, 2
	note A_, 2
	note A_, 4
	sound_loop 0, gbs_gen1_museumguy_Ch2.mainloop

gbs_gen1_museumguy_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	rest 16
	octave 4
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	note E_, 1
	rest 9
	sound_call gbs_gen1_museumguy_Ch3.sub1
	note A_, 1
	rest 1
	note A_, 1
	rest 5
	note Gs, 1
	rest 1
	note Gs, 1
	rest 5
	sound_call gbs_gen1_museumguy_Ch3.sub1
	note B_, 1
	rest 3
	note Gs, 1
	rest 3
	note A_, 1
	rest 1
	note A_, 1
	rest 3
gbs_gen1_museumguy_Ch3.mainloop:
	sound_call gbs_gen1_museumguy_Ch3.sub2
	rest 3
	octave 6
	note E_, 1
	rest 1
	octave 5
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	note B_, 1
	rest 1
	note Gs, 1
	rest 1
	note Gs, 1
	rest 3
	sound_call gbs_gen1_museumguy_Ch3.sub2
	rest 1
	octave 6
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	octave 5
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note Gs, 1
	rest 3
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	sound_loop 0, gbs_gen1_museumguy_Ch3.mainloop

gbs_gen1_museumguy_Ch3.sub1:
	note A_, 1
	rest 1
	note A_, 1
	rest 5
	note A_, 1
	rest 1
	note A_, 1
	rest 5
	sound_ret

gbs_gen1_museumguy_Ch3.sub2:
	octave 6
	note Cs, 1
	rest 1
	octave 5
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	octave 6
	note Fs, 1
	rest 1
	octave 5
	note A_, 1
	rest 1
	note A_, 1
	sound_ret

gbs_gen1_museumguy_Ch4:
	gbs_switch 3
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
	drum_speed 6
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
gbs_gen1_museumguy_Ch4.mainloop:
	drum_note 17, 4
	drum_note 17, 6
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 2
	drum_note 19, 1
	drum_note 19, 1
	drum_note 17, 6
	drum_note 19, 1
	drum_note 19, 1
	drum_note 17, 4
	drum_note 17, 6
	drum_note 17, 2
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 2
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 6
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 17, 2
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 4
	drum_note 17, 2
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 2
	drum_note 17, 2
	drum_note 17, 4
	drum_note 17, 2
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 6
	drum_note 19, 1
	drum_note 19, 1
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	sound_loop 0, gbs_gen1_museumguy_Ch4.mainloop

	.align 4
	.global gbs_gen1_museumguy_Header
gbs_gen1_museumguy_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_museumguy_Ch1
	.int gbs_gen1_museumguy_Ch2
	.int gbs_gen1_museumguy_Ch3
	.int gbs_gen1_museumguy_Ch4
