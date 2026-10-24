	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_pallettown_Ch1:
	gbs_switch 0
	tempo 160
	volume 7, 7
	duty_cycle 2
	note_type 12, 12, 3
gbs_pallettown_Ch1.mainloop:
	octave 3
	note B_, 4
	octave 4
	note C_, 2
	note D_, 4
	note G_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 4
	note G_, 2
	octave 4
	note D_, 4
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	rest 2
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 8
	rest 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note Fs, 2
	note B_, 4
	octave 4
	note C_, 2
	note D_, 4
	note G_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 4
	note G_, 2
	octave 4
	note D_, 4
	note D_, 2
	note G_, 2
	note Fs, 2
	note E_, 4
	note D_, 2
	note C_, 4
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 4
	note Fs, 4
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note E_, 2
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	note Fs, 2
	note A_, 2
	note_type 12, 11, 3
	note B_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note E_, 2
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	note Fs, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note A_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note Fs, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note Fs, 2
	note D_, 2
	note C_, 2
	note D_, 2
	sound_loop 0, gbs_pallettown_Ch1.mainloop

	sound_ret

gbs_pallettown_Ch2:
	gbs_switch 1
	duty_cycle 2
gbs_pallettown_Ch2.mainloop:
	note_type 12, 13, 3
	octave 5
	note D_, 2
	note_type 12, 10, 3
	note C_, 2
	note_type 12, 13, 3
	octave 4
	note B_, 2
	note_type 12, 11, 3
	note A_, 2
	note_type 12, 13, 3
	octave 5
	note G_, 2
	note_type 12, 11, 3
	note E_, 2
	note_type 12, 13, 3
	note Fs, 2
	note E_, 2
	note D_, 6
	octave 4
	note B_, 2
	note G_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C_, 10
	octave 4
	note Fs, 2
	note G_, 2
	note A_, 2
	note B_, 6
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	note A_, 8
	octave 5
	note D_, 2
	note_type 12, 10, 3
	note C_, 2
	note_type 12, 13, 3
	octave 4
	note B_, 2
	note_type 12, 11, 3
	octave 5
	note D_, 2
	note_type 12, 13, 3
	note G_, 2
	note_type 12, 10, 3
	note Fs, 2
	note_type 12, 11, 3
	note Fs, 2
	note_type 12, 13, 3
	note G_, 2
	note E_, 6
	note D_, 2
	note D_, 8
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	note G_, 2
	octave 5
	note D_, 2
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	note G_, 10
	note G_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C_, 8
	note D_, 6
	note C_, 2
	octave 4
	note B_, 8
	rest 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C_, 4
	note C_, 4
	note D_, 6
	note C_, 1
	note D_, 1
	octave 4
	note B_, 8
	rest 2
	note B_, 2
	note A_, 2
	note G_, 2
	note A_, 8
	note E_, 4
	note B_, 4
	note A_, 8
	note G_, 4
	note E_, 4
	note Fs, 8
	note G_, 4
	note B_, 4
	note B_, 8
	note A_, 8
	sound_loop 0, gbs_pallettown_Ch2.mainloop

	sound_ret

gbs_pallettown_Ch3:
	gbs_switch 2
	vibrato 24, 2, 8
	note_type 12, 1, 2
gbs_pallettown_Ch3.mainloop:
	octave 4
	note G_, 6
	note E_, 6
	note Fs, 4
	note G_, 6
	note A_, 6
	note G_, 4
	note E_, 6
	note Fs, 6
	note E_, 4
	note G_, 6
	note E_, 6
	note D_, 4
	note G_, 6
	note E_, 6
	note Fs, 4
	note G_, 6
	note A_, 6
	note G_, 4
	note E_, 6
	note Fs, 6
	note A_, 4
	note G_, 6
	note E_, 6
	note D_, 4
	note C_, 8
	note D_, 8
	note G_, 8
	note E_, 4
	note D_, 4
	note C_, 8
	note D_, 8
	note G_, 8
	note A_, 4
	note G_, 4
	note E_, 8
	note A_, 8
	note E_, 8
	note G_, 8
	note Fs, 8
	note E_, 8
	note E_, 8
	note Fs, 8
	sound_loop 0, gbs_pallettown_Ch3.mainloop

	sound_ret

	.align 4
	.global gbs_gen1_pallettown_Header
gbs_gen1_pallettown_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_pallettown_Ch1
	.int gbs_pallettown_Ch2
	.int gbs_pallettown_Ch3
