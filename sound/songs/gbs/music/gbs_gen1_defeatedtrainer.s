	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_defeatedtrainer_Ch1:
	gbs_switch 0
	tempo 224
	volume 7, 7
	duty_cycle 2
	pitch_offset 1	@ Gen 1 perfect pitch
	tempo 224
	note_type 4, 10, 2
	octave 4
	note D_, 2
	tempo 224
	note_type 4, 10, 2
	note D_, 2
	note D_, 2
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note_type 4, 11, 3
	note Fs, 12
	duty_cycle 1
	tempo 224
gbs_defeatedtrainer_Ch1.mainloop:
	note_type 4, 6, 3
	octave 3
	note A_, 6
	note Fs, 3
	note A_, 3
	note B_, 6
	note Gs, 3
	note B_, 3
	octave 4
	note Cs, 3
	octave 3
	note B_, 3
	note A_, 3
	note G_, 3
	note A_, 3
	note B_, 3
	note A_, 3
	note G_, 3
	note A_, 6
	note Fs, 3
	note A_, 3
	note B_, 6
	note Gs, 3
	note B_, 3
	octave 4
	note Cs, 3
	note D_, 3
	note E_, 3
	note Fs, 3
	note Cs, 3
	octave 3
	note B_, 3
	note A_, 3
	octave 4
	note Cs, 3
	octave 3
	note A_, 6
	note Fs, 3
	note A_, 3
	note B_, 6
	note Gs, 3
	note B_, 3
	octave 4
	note C_, 6
	octave 3
	note A_, 3
	octave 4
	note C_, 3
	note D_, 3
	octave 3
	note B_, 3
	octave 4
	note D_, 6
	note Cs, 3
	octave 3
	note B_, 3
	note A_, 3
	note G_, 3
	note Fs, 3
	note G_, 3
	note A_, 3
	note B_, 3
	note A_, 3
	note G_, 3
	note Fs, 3
	note E_, 3
	note Fs, 3
	note G_, 3
	note A_, 3
	note B_, 3
	sound_loop 0, gbs_defeatedtrainer_Ch1.mainloop

gbs_defeatedtrainer_Ch2:
	gbs_switch 1
	duty_cycle 2
	note_type 4, 12, 3
	octave 4
	note A_, 2
	note_type 4, 12, 3
	note A_, 2
	note A_, 2
	note A_, 2
	note B_, 2
	octave 5
	note Cs, 2
	note_type 4, 12, 4
	note D_, 12
gbs_defeatedtrainer_Ch2.mainloop:
	note_type 4, 8, 5
	octave 4
	note D_, 6
	octave 3
	note A_, 3
	octave 4
	note D_, 3
	note E_, 6
	octave 3
	note B_, 3
	octave 4
	note E_, 3
	note Fs, 3
	note G_, 3
	note A_, 6
	note E_, 3
	note Fs, 3
	note G_, 6
	note D_, 6
	octave 3
	note A_, 3
	octave 4
	note D_, 3
	note E_, 6
	octave 3
	note B_, 3
	octave 4
	note E_, 3
	note Fs, 3
	note G_, 3
	note A_, 6
	note Fs, 3
	note G_, 3
	note A_, 6
	note D_, 6
	octave 3
	note A_, 3
	octave 4
	note D_, 3
	note E_, 6
	octave 3
	note B_, 3
	octave 4
	note E_, 3
	note F_, 6
	note C_, 3
	note F_, 3
	note G_, 3
	note D_, 3
	note G_, 6
	note_type 4, 7, 0
	note Fs, 12
	note_type 4, 7, 7
	note Fs, 12
	note_type 4, 6, 0
	note E_, 12
	note_type 4, 6, 7
	note E_, 12
	sound_loop 0, gbs_defeatedtrainer_Ch2.mainloop

gbs_defeatedtrainer_Ch3:
	gbs_switch 2
	note_type 4, 1, 0
	octave 5
	note D_, 2
	note_type 4, 1, 0
	note D_, 2
	note D_, 2
	octave 4
	note B_, 2
	note A_, 2
	note G_, 2
	note A_, 12
	note_type 4, 2, 1
gbs_defeatedtrainer_Ch3.mainloop:
	note Fs, 3
	rest 3
	note Fs, 3
	rest 3
	note Gs, 3
	rest 3
	note Gs, 3
	rest 3
	note A_, 3
	rest 3
	note A_, 3
	rest 3
	note B_, 3
	rest 3
	note B_, 3
	rest 3
	note Fs, 3
	rest 3
	note Fs, 3
	rest 3
	note Gs, 3
	rest 3
	note Gs, 3
	rest 3
	note A_, 3
	rest 3
	note A_, 3
	rest 3
	octave 5
	note Cs, 3
	rest 3
	note Cs, 3
	octave 4
	note A_, 3
	note Fs, 3
	octave 5
	note D_, 3
	octave 4
	note Fs, 3
	rest 3
	note Gs, 3
	octave 5
	note E_, 3
	octave 4
	note Gs, 3
	rest 3
	note A_, 3
	octave 5
	note F_, 3
	octave 4
	note A_, 3
	rest 3
	note B_, 3
	octave 5
	note G_, 3
	octave 4
	note B_, 3
	note As, 3
	note A_, 3
	rest 3
	note A_, 3
	rest 3
	note A_, 3
	rest 3
	note A_, 3
	octave 5
	note C_, 3
	note Cs, 3
	rest 3
	note Cs, 3
	rest 3
	note Cs, 3
	rest 3
	note Cs, 3
	octave 4
	note A_, 3
	sound_loop 0, gbs_defeatedtrainer_Ch3.mainloop

	.align 4
	.global gbs_defeatedtrainer_Header
gbs_defeatedtrainer_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_defeatedtrainer_Ch1
	.int gbs_defeatedtrainer_Ch2
	.int gbs_defeatedtrainer_Ch3
