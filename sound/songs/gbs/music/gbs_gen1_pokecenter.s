	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_pokecenter_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	duty_cycle 3
	vibrato 10, 2, 2
	pitch_offset 1	@ Gen 1 perfect pitch
gbs_gen1_pokecenter_Ch1.mainloop:
	note_type 12, 10, 3
	octave 3
	note Fs, 2
	note F_, 2
	note Fs, 2
	note_type 12, 11, 5
	octave 4
	note D_, 4
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note_type 12, 10, 3
	note A_, 2
	note E_, 2
	note A_, 2
	note_type 12, 11, 5
	octave 4
	note Cs, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	octave 4
	note Cs, 2
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note_type 12, 10, 3
	note Fs, 2
	note F_, 2
	note Fs, 2
	note_type 12, 11, 5
	octave 4
	note D_, 4
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note_type 12, 10, 3
	note A_, 2
	note E_, 2
	note A_, 2
	note_type 12, 11, 5
	octave 4
	note Cs, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note Fs, 2
	note E_, 2
	note D_, 4
	note E_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 4
	note E_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 4
	note Cs, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 8
	octave 4
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 4
	note A_, 2
	note B_, 2
	octave 4
	note Cs, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note Cs, 4
	octave 3
	note B_, 2
	octave 4
	note Cs, 2
	note D_, 2
	note E_, 2
	note Cs, 2
	octave 3
	note B_, 2
	note A_, 4
	note G_, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note Fs, 2
	note G_, 2
	sound_loop 0, gbs_gen1_pokecenter_Ch1.mainloop

gbs_gen1_pokecenter_Ch2:
	gbs_switch 1
	vibrato 8, 2, 5
gbs_gen1_pokecenter_Ch2.mainloop:
	sound_call gbs_gen1_pokecenter_Ch2.sub1
	duty_cycle 3
	note_type 12, 10, 5
	octave 3
	note A_, 4
	note E_, 4
	sound_call gbs_gen1_pokecenter_Ch2.sub2
	note D_, 2
	note Fs, 6
	duty_cycle 3
	note_type 12, 10, 5
	octave 3
	note A_, 4
	note E_, 4
	sound_call gbs_gen1_pokecenter_Ch2.sub1
	duty_cycle 3
	note_type 12, 10, 5
	octave 3
	note A_, 4
	note E_, 4
	sound_call gbs_gen1_pokecenter_Ch2.sub2
	note D_, 8
	duty_cycle 3
	note_type 12, 10, 5
	octave 3
	note D_, 4
	note E_, 4
	duty_cycle 2
	note_type 12, 12, 6
	octave 4
	note Fs, 8
	note A_, 8
	note G_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note E_, 8
	note Cs, 8
	note E_, 8
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note D_, 8
	note Fs, 8
	note A_, 8
	note G_, 2
	note Fs, 2
	note G_, 2
	note A_, 2
	note B_, 8
	note A_, 4
	note G_, 2
	note Fs, 2
	note G_, 8
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	note D_, 8
	sound_loop 0, gbs_gen1_pokecenter_Ch2.mainloop

gbs_gen1_pokecenter_Ch2.sub1:
	duty_cycle 2
	note_type 12, 12, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note_type 12, 12, 3
	note A_, 4
	note G_, 4
	note Fs, 2
	note E_, 2
	note Cs, 6
	sound_ret

gbs_gen1_pokecenter_Ch2.sub2:
	duty_cycle 2
	note_type 12, 12, 2
	octave 4
	note Cs, 2
	octave 3
	note A_, 2
	octave 4
	note Cs, 2
	note_type 12, 12, 3
	note Fs, 4
	note E_, 4
	note Cs, 2
	sound_ret

gbs_gen1_pokecenter_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
gbs_gen1_pokecenter_Ch3.mainloop:
	octave 4
	note D_, 2
	note Fs, 2
	note D_, 2
	note Fs, 2
	note D_, 2
	note Fs, 2
	note G_, 2
	note Fs, 2
	sound_call gbs_gen1_pokecenter_Ch3.sub1
	sound_call gbs_gen1_pokecenter_Ch3.sub2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note D_, 2
	note Fs, 2
	note D_, 2
	note Fs, 2
	note D_, 2
	note Fs, 2
	note G_, 2
	note Fs, 2
	sound_call gbs_gen1_pokecenter_Ch3.sub1
	sound_call gbs_gen1_pokecenter_Ch3.sub2
	note D_, 2
	note Fs, 2
	note D_, 2
	note Fs, 2
	note D_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	sound_call gbs_gen1_pokecenter_Ch3.sub3
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	sound_call gbs_gen1_pokecenter_Ch3.sub3
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note G_, 2
	note Fs, 2
	note E_, 2
	sound_loop 0, gbs_gen1_pokecenter_Ch3.mainloop

gbs_gen1_pokecenter_Ch3.sub1:
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	sound_ret

gbs_gen1_pokecenter_Ch3.sub2:
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	sound_ret

gbs_gen1_pokecenter_Ch3.sub3:
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	sound_ret

	.align 4
	.global gbs_gen1_pokecenter_Header
gbs_gen1_pokecenter_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_pokecenter_Ch1
	.int gbs_gen1_pokecenter_Ch2
	.int gbs_gen1_pokecenter_Ch3
