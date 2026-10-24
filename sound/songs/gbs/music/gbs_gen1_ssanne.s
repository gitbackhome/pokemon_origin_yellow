	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_ssanne_Ch1:
	gbs_switch 0
	tempo 128
	volume 7, 7
	duty_cycle 1
	vibrato 8, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
gbs_gen1_ssanne_Ch1.mainloop:
	note_type 12, 10, 4
	rest 12
	octave 3
	note E_, 2
	note Fs, 2
	note E_, 4
	note D_, 4
	note Cs, 2
	note D_, 2
	note E_, 2
	rest 2
	note E_, 4
	note Fs, 2
	note D_, 2
	note E_, 4
	note Fs, 4
	note Gs, 4
	rest 4
	note E_, 4
	note Gs, 4
	rest 4
	note Cs, 2
	note E_, 2
	note Fs, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note Cs, 2
	note D_, 2
	note E_, 2
	rest 2
	note E_, 4
	note Fs, 2
	note D_, 2
	note E_, 4
	note Fs, 4
	note Gs, 4
	note Fs, 4
	note E_, 4
	note Fs, 4
	rest 4
	note Cs, 2
	note E_, 2
	note Fs, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note Cs, 2
	note D_, 2
	note E_, 2
	rest 2
	note E_, 4
	note Fs, 2
	note D_, 2
	note E_, 4
	note Fs, 4
	note Gs, 4
	note Fs, 8
	note Gs, 4
	note E_, 4
	rest 4
	note E_, 4
	note Fs, 2
	note E_, 2
	note D_, 4
	rest 4
	note D_, 4
	note E_, 4
	note Cs, 4
	rest 4
	note Cs, 4
	note D_, 2
	note Cs, 2
	octave 2
	note B_, 4
	note E_, 4
	note B_, 4
	octave 3
	note D_, 2
	octave 2
	note B_, 2
	note A_, 4
	rest 4
	note A_, 4
	note B_, 2
	note A_, 2
	note Gs, 4
	rest 4
	note Cs, 4
	note Gs, 4
	note A_, 4
	rest 4
	note A_, 4
	note B_, 4
	note B_, 4
	rest 4
	octave 3
	note D_, 8
	sound_loop 0, gbs_gen1_ssanne_Ch1.mainloop

gbs_gen1_ssanne_Ch2:
	gbs_switch 1
	duty_cycle 0
	vibrato 12, 2, 4
gbs_gen1_ssanne_Ch2.mainloop:
	note_type 12, 12, 5
	octave 3
	note A_, 2
	note E_, 2
	note A_, 4
	note B_, 4
	octave 4
	note D_, 4
	note_type 8, 12, 5
	note Cs, 2
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 3
	note A_, 3
	note B_, 6
	note Gs, 6
	note A_, 3
	note B_, 3
	octave 4
	note Cs, 6
	note D_, 6
	note Cs, 3
	octave 3
	note B_, 3
	octave 4
	note E_, 6
	note D_, 3
	note Cs, 3
	octave 3
	note B_, 6
	octave 4
	note Cs, 3
	octave 3
	note B_, 3
	note A_, 3
	note E_, 3
	note A_, 6
	note B_, 6
	octave 4
	note D_, 6
	note Cs, 2
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 3
	note A_, 3
	note B_, 6
	note Gs, 6
	note A_, 3
	note B_, 3
	octave 4
	note Cs, 6
	note D_, 6
	note Cs, 3
	octave 3
	note B_, 3
	octave 4
	note E_, 6
	note D_, 3
	note Cs, 3
	octave 3
	note B_, 12
	note A_, 3
	note E_, 3
	note A_, 6
	note B_, 6
	octave 4
	note D_, 6
	note Cs, 2
	note D_, 2
	note Cs, 2
	octave 3
	note B_, 3
	note A_, 3
	note B_, 6
	note Gs, 6
	note A_, 3
	note B_, 3
	octave 4
	note Cs, 6
	note D_, 6
	note Cs, 3
	octave 3
	note B_, 3
	octave 4
	note E_, 6
	note D_, 3
	note Cs, 3
	octave 3
	note B_, 12
	rest 3
	octave 4
	note Cs, 3
	octave 3
	note B_, 3
	octave 4
	note Cs, 3
	note Cs, 3
	note D_, 3
	note Cs, 3
	note D_, 3
	note E_, 3
	octave 3
	note B_, 3
	note Gs, 3
	note Fs, 3
	note E_, 3
	note Fs, 3
	note Gs, 3
	note B_, 3
	rest 3
	note A_, 3
	note Gs, 3
	note A_, 3
	note A_, 3
	note B_, 3
	note A_, 3
	note B_, 3
	octave 4
	note Cs, 3
	octave 3
	note Gs, 3
	note Fs, 3
	note E_, 3
	note E_, 3
	note Fs, 3
	note Gs, 3
	note B_, 3
	rest 3
	note Fs, 3
	note E_, 3
	note Fs, 3
	note Fs, 3
	note Gs, 3
	note Fs, 3
	note Gs, 3
	note A_, 3
	note E_, 3
	note Cs, 3
	octave 2
	note B_, 3
	note A_, 3
	note B_, 3
	octave 3
	note Cs, 3
	note E_, 3
	rest 3
	note Fs, 3
	note E_, 3
	note Fs, 3
	note Fs, 3
	note Gs, 3
	note A_, 3
	note B_, 3
	octave 4
	note Cs, 3
	note D_, 3
	note Cs, 3
	octave 3
	note B_, 3
	octave 4
	note E_, 3
	note D_, 3
	note Cs, 3
	octave 3
	note B_, 3
	sound_loop 0, gbs_gen1_ssanne_Ch2.mainloop

gbs_gen1_ssanne_Ch3:
	gbs_switch 2
gbs_gen1_ssanne_Ch3.mainloop:
	note_type 12, 1, 3
	rest 16
	rest 12
	octave 4
	note B_, 2
	note Gs, 2
	note A_, 8
	note Fs, 8
	note Gs, 4
	rest 4
	note B_, 8
	note A_, 8
	note B_, 8
	note A_, 8
	note Gs, 8
	note A_, 8
	note Fs, 8
	note Gs, 8
	note B_, 8
	note A_, 4
	note E_, 4
	note B_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note Gs, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note Fs, 4
	note G_, 4
	note Gs, 4
	note A_, 4
	octave 5
	note D_, 8
	note Cs, 8
	note Cs, 8
	octave 4
	note B_, 8
	note B_, 8
	note A_, 8
	note A_, 8
	note Gs, 8
	note Gs, 8
	note Fs, 8
	note Fs, 8
	note E_, 8
	note E_, 8
	note Fs, 8
	note Fs, 8
	note Gs, 8
	note B_, 8
	sound_loop 0, gbs_gen1_ssanne_Ch3.mainloop

	.align 4
	.global gbs_gen1_ssanne_Header
gbs_gen1_ssanne_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_ssanne_Ch1
	.int gbs_gen1_ssanne_Ch2
	.int gbs_gen1_ssanne_Ch3
