	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_cities1_Ch1.AlternateTempo:
	tempo 232
	sound_loop 0, Music_Cities1_Ch1.body

gbs_gen1_cities1_Ch1:
	gbs_switch 0
	tempo 144
gbs_gen1_cities1_Ch1.body:
	volume 7, 7
	vibrato 8, 2, 4
	duty_cycle 3
gbs_gen1_cities1_Ch1.mainloop:
	note_type 12, 12, 5
	octave 3
	note Gs, 4
	note Fs, 4
	note E_, 2
	note E_, 2
	note Fs, 2
	note Ds, 2
	note E_, 2
	note E_, 2
	note Ds, 2
	note Cs, 4
	note Ds, 4
	note E_, 2
	note Ds, 4
	note Cs, 2
	note E_, 2
	note E_, 4
	note_type 12, 10, 5
	note Cs, 4
	octave 2
	note B_, 6
	octave 3
	note Cs, 2
	note Cs, 4
	octave 2
	note B_, 4
	note_type 12, 12, 5
	sound_call gbs_gen1_cities1_Ch1.sub1
	octave 3
	note Ds, 6
	note E_, 2
	octave 2
	note B_, 4
	note_type 12, 10, 5
	octave 3
	note Cs, 2
	octave 2
	note B_, 2
	note A_, 4
	note B_, 4
	note B_, 2
	octave 3
	note Cs, 2
	note Ds, 2
	note E_, 2
	note Ds, 2
	note Cs, 2
	note Ds, 2
	note_type 12, 12, 5
	note Gs, 2
	note E_, 2
	note Fs, 2
	note E_, 2
	note E_, 4
	note Fs, 2
	note Ds, 2
	note E_, 4
	note Ds, 2
	note Cs, 4
	note Ds, 4
	note E_, 2
	note Ds, 2
	note Cs, 2
	note Cs, 2
	note E_, 2
	note E_, 4
	note_type 12, 10, 5
	note Cs, 2
	octave 2
	note A_, 2
	note B_, 6
	octave 3
	note Cs, 2
	note Cs, 2
	octave 2
	note B_, 2
	note B_, 4
	note_type 12, 12, 5
	sound_call gbs_gen1_cities1_Ch1.sub1
	octave 3
	note Ds, 4
	note Ds, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note Cs, 2
	note Gs, 2
	note E_, 4
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note_type 12, 10, 5
	note Cs, 4
	octave 2
	note B_, 2
	octave 3
	note Ds, 4
	note Cs, 2
	note E_, 4
	note_type 12, 11, 3
	sound_call gbs_gen1_cities1_Ch1.sub2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 4
	note Fs, 4
	note Gs, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 4
	note Gs, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note E_, 2
	note Fs, 2
	note E_, 2
	note Ds, 2
	note E_, 2
	note Ds, 2
	note Cs, 2
	octave 2
	note B_, 2
	octave 3
gbs_gen1_cities1_Ch1.loop1:
	note Cs, 2
	note Ds, 2
	note Cs, 2
	octave 2
	note B_, 4
	note B_, 2
	octave 3
	note Cs, 2
	note Ds, 2
	sound_loop 2, gbs_gen1_cities1_Ch1.loop1
	note E_, 2
	octave 2
	note B_, 4
	octave 3
	note E_, 4
	octave 2
	note B_, 2
	octave 3
	note Cs, 2
	note Gs, 2
	note Gs, 2
	octave 2
	note B_, 2
	octave 3
	note Fs, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	octave 2
	note B_, 2
	octave 3
	sound_call gbs_gen1_cities1_Ch1.sub2
	note A_, 2
	note E_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note Fs, 2
	note Gs, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note Cs, 2
	note Gs, 2
	note Cs, 2
	note Ds, 2
	note B_, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note Fs, 2
	note E_, 4
	note Gs, 2
	note Fs, 2
	note Ds, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 4
	note Fs, 2
	note Ds, 2
	note Ds, 2
	note Fs, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note Ds, 2
	octave 2
	note B_, 2
	note B_, 2
	octave 3
	note Ds, 2
	note_type 12, 11, 6
	note Fs, 8
	note Fs, 4
	note Ds, 4
	note E_, 8
	note_type 12, 8, 4
	octave 2
	note B_, 4
	octave 3
	note E_, 2
	note Fs, 2
	sound_loop 0, gbs_gen1_cities1_Ch1.mainloop

gbs_gen1_cities1_Ch1.sub1:
	octave 3
	note Fs, 2
	note Ds, 4
	note E_, 2
	note Ds, 4
	note Cs, 4
	octave 2
	note B_, 4
	octave 3
	note Cs, 2
	note Ds, 2
	note Cs, 2
	sound_ret

gbs_gen1_cities1_Ch1.sub2:
	note A_, 2
	note E_, 2
	note Cs, 2
	note E_, 4
	note A_, 2
	note Cs, 2
	note E_, 2
	sound_ret

gbs_gen1_cities1_Ch2:
	gbs_switch 1
gbs_gen1_cities1_Ch2.mainloop:
	vibrato 5, 1, 5
	sound_call gbs_gen1_cities1_Ch2.sub1
	octave 4
	note Gs, 2
	note_type 12, 12, 4
	note E_, 6
	note_type 12, 12, 5
	duty_cycle 3
	octave 3
	note Cs, 4
	note Ds, 4
	note E_, 6
	note Fs, 6
	note Gs, 4
	sound_call gbs_gen1_cities1_Ch2.sub1
	octave 4
	note Gs, 2
	note_type 12, 12, 4
	note E_, 14
	duty_cycle 3
	octave 3
	note E_, 6
	note Fs, 6
	note Gs, 4
	note_type 12, 11, 7
	duty_cycle 2
	vibrato 8, 1, 7
	octave 5
	note Cs, 12
	octave 4
	note A_, 4
	octave 5
	note E_, 8
	note Fs, 2
	note E_, 2
	note Ds, 2
	note Cs, 2
	octave 4
	note B_, 12
	note Gs, 4
	note B_, 16
	note Fs, 12
	note Gs, 2
	note A_, 2
	note B_, 4
	note A_, 4
	note Gs, 4
	note Fs, 4
	note Gs, 12
	note E_, 4
	note B_, 16
	octave 5
	note Cs, 12
	note Ds, 2
	note E_, 2
	note Fs, 4
	note E_, 4
	note Ds, 4
	note Cs, 4
	octave 4
	note B_, 12
	octave 5
	note Cs, 2
	note Ds, 2
	note Cs, 4
	octave 4
	note B_, 4
	note A_, 4
	note Gs, 4
	note A_, 12
	note B_, 2
	octave 5
	note C_, 2
	note C_, 4
	octave 4
	note B_, 4
	note A_, 4
	note Fs, 4
	note_type 12, 11, 7
	note A_, 8
	octave 5
	note C_, 8
	octave 4
	note B_, 14
	note_type 12, 8, 4
	note Gs, 1
	note_type 12, 10, 4
	note A_, 1
	sound_loop 0, gbs_gen1_cities1_Ch2.mainloop

gbs_gen1_cities1_Ch2.sub1:
	duty_cycle 2
	note_type 12, 12, 3
	octave 4
	note B_, 4
	note A_, 4
	note_type 12, 12, 4
	note Gs, 10
	note_type 12, 12, 3
	note Gs, 2
	note A_, 2
	note B_, 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note_type 12, 12, 4
	note Fs, 10
	note_type 12, 12, 5
	duty_cycle 3
	octave 3
	note E_, 4
	note Ds, 8
	note E_, 4
	note Fs, 4
	note_type 12, 12, 3
	duty_cycle 2
	octave 4
	note A_, 4
	note Gs, 4
	note_type 12, 12, 4
	note Fs, 10
	note_type 12, 12, 3
	note Fs, 2
	note Gs, 2
	note A_, 4
	note A_, 2
	note Gs, 2
	note Fs, 2
	sound_ret

gbs_gen1_cities1_Ch3:
	gbs_switch 2
	note_type 12, 1, 1
	pitch_offset 1	@ Gen 1 perfect pitch
gbs_gen1_cities1_Ch3.mainloop:
	vibrato 0, 0, 0
	octave 4
	sound_call gbs_gen1_cities1_Ch3.sub1
	sound_call gbs_gen1_cities1_Ch3.sub1
	sound_call gbs_gen1_cities1_Ch3.sub2
	note Gs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	rest 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	sound_call gbs_gen1_cities1_Ch3.sub1
	note B_, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	rest 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	sound_call gbs_gen1_cities1_Ch3.sub1
	sound_call gbs_gen1_cities1_Ch3.sub2
	note Gs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	rest 2
	note Gs, 2
	note E_, 2
	note B_, 2
	rest 2
	note E_, 2
	note Fs, 2
	note E_, 2
	note Gs, 2
	note E_, 2
	note B_, 2
	note E_, 2
	vibrato 8, 2, 5
	note A_, 8
	note E_, 8
	note A_, 8
	note Fs, 8
	note Gs, 8
	note E_, 8
	note Gs, 12
	note E_, 4
	note Fs, 2
	note Fs, 2
	note Ds, 2
	note E_, 4
	note Fs, 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	note Fs, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 2
	note Gs, 2
	note E_, 2
	note Gs, 2
	rest 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	rest 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note A_, 8
	note E_, 8
	note A_, 8
	note B_, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Gs, 8
	note E_, 8
	note B_, 4
	note E_, 4
	note Fs, 4
	note Gs, 4
	rest 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	rest 2
	note Fs, 2
	note B_, 2
	note A_, 2
	note A_, 4
	note Gs, 4
	note Fs, 2
	note Ds, 2
	note A_, 2
	note Fs, 2
	rest 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	rest 2
	note E_, 2
	note Fs, 1
	note Gs, 1
	note E_, 1
	note Fs, 1
	note Gs, 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	sound_loop 0, gbs_gen1_cities1_Ch3.mainloop

gbs_gen1_cities1_Ch3.sub1:
	rest 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	rest 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	sound_ret

gbs_gen1_cities1_Ch3.sub2:
	note A_, 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	rest 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	rest 2
	note Fs, 2
	note Gs, 2
	note A_, 2
	rest 2
	note A_, 2
	note Gs, 2
	note Fs, 2
	note Ds, 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	rest 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	rest 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	rest 2
	note Ds, 2
	note E_, 2
	note Fs, 2
	sound_ret

gbs_gen1_cities1_Ch4:
	gbs_switch 3
gbs_gen1_cities1_Ch4.mainloop:
	drum_speed 12
	sound_call gbs_gen1_cities1_Ch4.sub1
gbs_gen1_cities1_Ch4.loop1:
	sound_call gbs_gen1_cities1_Ch4.sub1
	sound_call gbs_gen1_cities1_Ch4.sub2
	sound_call gbs_gen1_cities1_Ch4.sub2
	sound_loop 2, gbs_gen1_cities1_Ch4.loop1
	sound_call gbs_gen1_cities1_Ch4.sub1
	sound_call gbs_gen1_cities1_Ch4.sub4
	sound_call gbs_gen1_cities1_Ch4.sub3
	drum_note 6, 6
	drum_note 6, 6
	drum_note 7, 4
	sound_call gbs_gen1_cities1_Ch4.sub5
	sound_call gbs_gen1_cities1_Ch4.sub4
	sound_call gbs_gen1_cities1_Ch4.sub3
	sound_call gbs_gen1_cities1_Ch4.sub5
	sound_call gbs_gen1_cities1_Ch4.sub3
	drum_note 6, 6
	drum_note 6, 6
	drum_note 7, 2
	drum_note 6, 2
	drum_note 6, 6
	drum_note 6, 6
	drum_note 6, 4
	drum_note 6, 6
	drum_note 8, 6
	drum_note 8, 4
	sound_loop 0, gbs_gen1_cities1_Ch4.mainloop

gbs_gen1_cities1_Ch4.sub1:
	drum_note 8, 6
	drum_note 8, 6
	drum_note 8, 4
	drum_note 8, 6
	drum_note 8, 6
	drum_note 8, 2
	drum_note 8, 2
	sound_ret

gbs_gen1_cities1_Ch4.sub2:
	drum_note 8, 6
	drum_note 8, 6
	drum_note 8, 4
	drum_note 8, 6
	drum_note 8, 6
	drum_note 8, 4
	sound_ret

gbs_gen1_cities1_Ch4.sub3:
	drum_note 6, 6
	drum_note 6, 6
	drum_note 7, 4
	drum_note 6, 6
	drum_note 6, 6
	drum_note 7, 4
	sound_ret

gbs_gen1_cities1_Ch4.sub4:
	drum_note 6, 6
	drum_note 6, 6
	drum_note 7, 4
	drum_note 6, 6
	drum_note 6, 6
	drum_note 7, 2
	drum_note 6, 2
	sound_ret

gbs_gen1_cities1_Ch4.sub5:
	drum_note 6, 6
	drum_note 6, 6
	drum_note 7, 2
	drum_note 7, 2
	sound_ret

	.align 4
	.global gbs_gen1_cities1_Header
gbs_gen1_cities1_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_cities1_Ch1
	.int gbs_gen1_cities1_Ch2
	.int gbs_gen1_cities1_Ch3
	.int gbs_gen1_cities1_Ch4
