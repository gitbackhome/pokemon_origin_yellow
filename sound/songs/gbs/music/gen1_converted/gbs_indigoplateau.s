	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_indigoplateau_Ch1:
	gbs_switch 0
	tempo 132
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 2
	octave 2
	note A_, 8
	note A_, 8
	note A_, 8
	note A_, 4
	note_type 12, 10, 4
	note As, 4
gbs_indigoplateau_Ch1.mainloop:
	sound_call gbs_indigoplateau_Ch1.sub1
	note_type 12, 11, 4
	octave 3
	note D_, 4
	sound_call gbs_indigoplateau_Ch1.sub1
	note_type 12, 11, 4
	octave 3
	note Ds, 4
	sound_call gbs_indigoplateau_Ch1.sub1
	note_type 12, 11, 4
	octave 3
	note D_, 4
	sound_call gbs_indigoplateau_Ch1.sub1
	note_type 12, 10, 0
	octave 2
	note As, 4
	sound_call gbs_indigoplateau_Ch1.sub1
	note_type 12, 11, 4
	octave 3
	note D_, 4
	note_type 12, 13, 4
	octave 3
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note_type 12, 11, 4
	octave 3
	note Ds, 4
	note_type 12, 13, 4
	octave 3
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	note As, 4
	note_type 12, 11, 4
	octave 3
	note F_, 2
	note_type 12, 11, 4
	octave 3
	note G_, 2
	note_type 12, 11, 0
	note A_, 8
	octave 2
	note A_, 8
	note_type 12, 11, 7
	octave 3
	note F_, 8
	note_type 12, 4, -6
	octave 2
	note As, 8
	sound_loop 0, gbs_indigoplateau_Ch1.mainloop

gbs_indigoplateau_Ch1.sub1:
	note_type 12, 11, 2
	octave 2
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	sound_ret

gbs_indigoplateau_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 8, 2, 5
	note_type 12, 12, 2
	octave 3
	note D_, 8
	note D_, 8
	note D_, 8
	note D_, 4
	note_type 12, 5, -2
	note Ds, 4
gbs_indigoplateau_Ch2.mainloop:
	sound_call gbs_indigoplateau_Ch2.sub1
	note_type 12, 12, 5
	note A_, 4
	sound_call gbs_indigoplateau_Ch2.sub1
	note_type 12, 12, 5
	note As, 4
	sound_call gbs_indigoplateau_Ch2.sub1
	note_type 12, 12, 5
	note A_, 4
	sound_call gbs_indigoplateau_Ch2.sub1
	note_type 12, 12, 7
	note Cs, 4
	sound_call gbs_indigoplateau_Ch2.sub1
	note_type 12, 12, 5
	note A_, 4
	sound_call gbs_indigoplateau_Ch2.sub1
	note_type 12, 12, 5
	note As, 4
	sound_call gbs_indigoplateau_Ch2.sub1
	note_type 12, 12, 5
	octave 4
	note C_, 2
	note_type 12, 12, 7
	octave 4
	note Cs, 2
	note D_, 8
	octave 3
	note D_, 8
	octave 4
	note C_, 8
	note_type 12, 4, -5
	octave 4
	note Ds, 8
	sound_loop 0, gbs_indigoplateau_Ch2.mainloop

gbs_indigoplateau_Ch2.sub1:
	note_type 12, 12, 2
	octave 3
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	sound_ret

gbs_indigoplateau_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	octave 4
	note D_, 2
	rest 6
	note D_, 2
	rest 6
	note D_, 2
	rest 6
	note D_, 2
	rest 2
	note Ds, 4
gbs_indigoplateau_Ch3.mainloop:
	sound_call gbs_indigoplateau_Ch3.sub1
	sound_call gbs_indigoplateau_Ch3.sub1
	sound_call gbs_indigoplateau_Ch3.sub1
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note Fs, 4
	sound_call gbs_indigoplateau_Ch3.sub1
	sound_call gbs_indigoplateau_Ch3.sub1
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note As, 1
	rest 1
	note As, 1
	rest 1
	note A_, 8
	note D_, 8
	note As, 8
	note Ds, 8
	sound_loop 0, gbs_indigoplateau_Ch3.mainloop

gbs_indigoplateau_Ch3.sub1:
	octave 4
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note A_, 4
	sound_ret

gbs_indigoplateau_Ch4:
	gbs_switch 3
	drum_speed 6
	drum_note 17, 16
	drum_note 17, 16
	drum_note 17, 16
	drum_note 17, 8
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
gbs_indigoplateau_Ch4.mainloop:
	sound_call gbs_indigoplateau_Ch4.sub2
	sound_call gbs_indigoplateau_Ch4.sub1
	sound_call gbs_indigoplateau_Ch4.sub2
	sound_call gbs_indigoplateau_Ch4.sub3
	sound_call gbs_indigoplateau_Ch4.sub2
	sound_call gbs_indigoplateau_Ch4.sub1
	sound_call gbs_indigoplateau_Ch4.sub2
	sound_call gbs_indigoplateau_Ch4.sub3
	sound_call gbs_indigoplateau_Ch4.sub2
	sound_call gbs_indigoplateau_Ch4.sub1
	sound_call gbs_indigoplateau_Ch4.sub2
	sound_call gbs_indigoplateau_Ch4.sub3
	sound_call gbs_indigoplateau_Ch4.sub1
	sound_call gbs_indigoplateau_Ch4.sub3
	drum_note 17, 16
	drum_note 17, 8
	drum_note 18, 8
	drum_note 17, 16
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 17, 1
	drum_note 17, 1
	drum_note 17, 1
	drum_note 17, 1
	sound_loop 0, gbs_indigoplateau_Ch4.mainloop

gbs_indigoplateau_Ch4.sub1:
	drum_note 17, 4
	drum_note 18, 4
	drum_note 19, 4
	drum_note 18, 4
	drum_note 17, 4
	drum_note 18, 4
	drum_note 19, 4
	drum_note 19, 2
	drum_note 18, 2
	sound_ret

gbs_indigoplateau_Ch4.sub2:
	drum_note 17, 4
	drum_note 18, 4
	drum_note 19, 4
	drum_note 18, 4
	drum_note 17, 4
	drum_note 18, 4
	drum_note 19, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	sound_ret

gbs_indigoplateau_Ch4.sub3:
	drum_note 17, 4
	drum_note 18, 4
	drum_note 17, 4
	drum_note 18, 4
	drum_note 17, 4
	drum_note 17, 4
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 19, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	drum_note 18, 1
	sound_ret

	.align 4
	.global gbs_indigoplateau_Header
gbs_indigoplateau_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_indigoplateau_Ch1
	.int gbs_indigoplateau_Ch2
	.int gbs_indigoplateau_Ch3
	.int gbs_indigoplateau_Ch4
