	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_safarizone_Ch1:
	gbs_switch 0
	tempo 132
	volume 7, 7
	vibrato 6, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	duty_cycle 2
	note_type 12, 9, 2
	octave 3
	pitch_slide 1, 4, A_
	note C_, 1
	pitch_slide 1, 4, A_
	note G_, 1
	pitch_slide 1, 4, A_
	note C_, 1
	pitch_slide 1, 4, A_
	note G_, 1
	rest 4
	duty_cycle 3
gbs_gen1_safarizone_Ch1.mainloop:
	sound_call gbs_gen1_safarizone_Ch1.sub1
	note_type 12, 10, 4
	note Fs, 4
	sound_call gbs_gen1_safarizone_Ch1.sub1
	note_type 12, 10, 4
	note Fs, 4
	sound_loop 0, gbs_gen1_safarizone_Ch1.mainloop

gbs_gen1_safarizone_Ch1.sub1:
	note_type 12, 10, 2
	octave 3
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	sound_ret

gbs_gen1_safarizone_Ch2:
	gbs_switch 1
	duty_cycle 2
	vibrato 8, 2, 5
	note_type 12, 10, 2
	octave 4
	note G_, 1
	note D_, 1
	note G_, 1
	note D_, 1
	rest 4
	duty_cycle 3
gbs_gen1_safarizone_Ch2.mainloop:
	sound_call gbs_gen1_safarizone_Ch2.sub1
	note_type 12, 11, 5
	note A_, 4
	sound_call gbs_gen1_safarizone_Ch2.sub1
	note_type 12, 11, 5
	note B_, 4
	sound_loop 0, gbs_gen1_safarizone_Ch2.mainloop

gbs_gen1_safarizone_Ch2.sub1:
	note_type 12, 11, 2
	octave 3
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	sound_ret

gbs_gen1_safarizone_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
	rest 8
gbs_gen1_safarizone_Ch3.mainloop:
	sound_call gbs_gen1_safarizone_Ch3.sub1
	octave 4
	note A_, 4
	sound_call gbs_gen1_safarizone_Ch3.sub1
	octave 4
	note B_, 4
	sound_loop 0, gbs_gen1_safarizone_Ch3.mainloop

gbs_gen1_safarizone_Ch3.sub1:
	octave 3
	note A_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	sound_ret

	.align 4
	.global gbs_gen1_safarizone_Header
gbs_gen1_safarizone_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_safarizone_Ch1
	.int gbs_gen1_safarizone_Ch2
	.int gbs_gen1_safarizone_Ch3
