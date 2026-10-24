	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_cinnabar_Ch1:
	gbs_switch 0
	tempo 144
	volume 7, 7
	duty_cycle 3
	vibrato 12, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
gbs_cinnabar_Ch1.mainloop:
	note_type 12, 11, 5
	rest 4
	octave 3
	note D_, 4
	note E_, 6
	note Cs, 2
	note_type 12, 11, 1
	note D_, 4
	note_type 12, 11, 5
	note B_, 4
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note_type 12, 11, 1
	note B_, 4
	note_type 12, 11, 5
	note G_, 4
	note Fs, 4
	note E_, 2
	note Fs, 2
	note_type 12, 11, 1
	note G_, 4
	note_type 12, 11, 5
	note G_, 4
	note Fs, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note Fs, 6
	note A_, 2
	note_type 12, 11, 1
	note G_, 4
	note_type 12, 11, 5
	note B_, 4
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note B_, 4
	note G_, 4
	note Fs, 3
	note E_, 1
	note Fs, 2
	note A_, 2
	note_type 12, 10, 2
	note G_, 4
	octave 4
	note D_, 1
	note E_, 1
	note D_, 4
	note_type 12, 7, 2
	note D_, 1
	note E_, 1
	note D_, 4
	note_type 12, 10, 7
	octave 3
	note B_, 6
	note G_, 2
	note E_, 8
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note Fs, 8
	octave 4
	note Fs, 6
	note D_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note Fs, 2
	note G_, 8
	note Fs, 4
	note E_, 4
	sound_loop 0, gbs_cinnabar_Ch1.mainloop

gbs_cinnabar_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 10, 2, 3
gbs_cinnabar_Ch2.mainloop:
	note_type 12, 12, 7
	octave 3
	note G_, 6
	note A_, 1
	note B_, 1
	octave 4
	note C_, 6
	note D_, 1
	note E_, 1
	note_type 12, 12, 1
	note D_, 4
	note_type 12, 12, 7
	note G_, 4
	note A_, 6
	note G_, 1
	note Fs, 1
	note E_, 4
	note D_, 4
	note C_, 3
	octave 3
	note B_, 1
	octave 4
	note C_, 2
	note D_, 1
	note E_, 1
	note_type 12, 12, 1
	note D_, 4
	note_type 12, 12, 7
	octave 3
	note B_, 8
	note A_, 4
	note G_, 6
	note A_, 1
	note B_, 1
	octave 4
	note C_, 6
	note D_, 1
	note E_, 1
	note_type 12, 12, 1
	note D_, 4
	note_type 12, 12, 7
	note G_, 4
	note A_, 6
	note G_, 1
	note Fs, 1
	note E_, 4
	note D_, 4
	note C_, 3
	octave 3
	note B_, 1
	octave 4
	note C_, 2
	note D_, 1
	note E_, 1
	note_type 12, 12, 1
	note D_, 4
	note_type 12, 12, 7
	octave 3
	note A_, 4
	note G_, 4
	note Fs, 4
	note_type 12, 11, 0
	octave 4
	note D_, 6
	octave 3
	note B_, 2
	note G_, 8
	octave 4
	note E_, 6
	note C_, 2
	octave 3
	note A_, 8
	octave 4
	note A_, 6
	note Fs, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 4
	octave 4
	note D_, 4
	octave 3
	note B_, 2
	note A_, 6
	sound_loop 0, gbs_cinnabar_Ch2.mainloop

gbs_cinnabar_Ch3:
	gbs_switch 2
	note_type 12, 1, 0
gbs_cinnabar_Ch3.mainloop:
	octave 4
	note G_, 1
	rest 3
	note B_, 2
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note Fs, 1
	rest 1
	note G_, 1
	rest 3
	note B_, 2
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note Fs, 1
	rest 1
	note G_, 1
	rest 3
	note B_, 2
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note Fs, 1
	rest 1
	note G_, 1
	rest 3
	note B_, 2
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note A_, 1
	rest 1
	note G_, 1
	rest 3
	note B_, 2
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note Fs, 1
	rest 1
	note G_, 1
	rest 3
	note B_, 2
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note Fs, 1
	rest 1
	note G_, 1
	rest 3
	note B_, 2
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note Fs, 1
	rest 1
	note G_, 1
	rest 3
	note B_, 4
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 4
	octave 4
	note B_, 1
	rest 3
	octave 5
	note D_, 2
	octave 4
	note B_, 1
	note B_, 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note B_, 1
	rest 1
	note G_, 1
	rest 3
	octave 5
	note E_, 2
	note C_, 1
	note C_, 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 2
	note C_, 1
	rest 1
	octave 4
	note A_, 1
	rest 3
	octave 5
	note A_, 2
	note Fs, 1
	note Fs, 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 2
	note C_, 1
	rest 1
	octave 4
	note B_, 1
	rest 3
	octave 5
	note D_, 2
	note C_, 1
	note C_, 1
	octave 4
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note A_, 2
	octave 5
	note C_, 1
	rest 1
	sound_loop 0, gbs_cinnabar_Ch3.mainloop

	.align 4
	.global gbs_cinnabar_Header
gbs_cinnabar_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_cinnabar_Ch1
	.int gbs_cinnabar_Ch2
	.int gbs_cinnabar_Ch3
