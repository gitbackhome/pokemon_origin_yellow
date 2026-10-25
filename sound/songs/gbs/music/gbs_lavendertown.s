	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_lavendertown_Ch1:
	gbs_switch 0
	tempo 152
	volume 7, 7
	duty_cycle 1
	pitch_offset 1	@ Gen 1 perfect pitch
	vibrato 0, 8, 8
	note_type 12, 8, 7
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 10, 7
gbs_lavendertown_Ch1.mainloop:
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note Fs, 4
	note E_, 4
	note B_, 4
	note Cs, 8
	note Cs, 8
	note G_, 8
	note G_, 8
	note Fs, 8
	note Fs, 8
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note Fs, 4
	note E_, 4
	note B_, 4
	note Cs, 8
	note Cs, 8
	note G_, 8
	note G_, 8
	note Fs, 8
	note Fs, 8
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	note C_, 8
	note C_, 8
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, gbs_lavendertown_Ch1.mainloop

gbs_lavendertown_Ch2:
	gbs_switch 1
	vibrato 0, 3, 4
	duty_cycle 3
	note_type 12, 9, 1
gbs_lavendertown_Ch2.mainloop:
	octave 5
	note C_, 4
	note G_, 4
	note B_, 4
	note Fs, 4
	sound_loop 0, gbs_lavendertown_Ch2.mainloop

gbs_lavendertown_Ch3:
	gbs_switch 2
	vibrato 4, 1, 1
	note_type 12, 3, 5
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 2, 5
gbs_lavendertown_Ch3.mainloop:
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note_type 12, 3, 5
	octave 6
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	note_type 12, 2, 5
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note_type 12, 2, 5
	octave 6
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 8
	note B_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note Fs, 4
	note B_, 4
	sound_loop 0, gbs_lavendertown_Ch3.mainloop

gbs_lavendertown_Ch4:
	gbs_switch 3
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
gbs_lavendertown_Ch4.mainloop:
	drum_note 7, 8
	drum_note 7, 8
	sound_loop 0, gbs_lavendertown_Ch4.mainloop

	.align 4
	.global gbs_lavendertown_Header
gbs_lavendertown_Header:
	.byte 4	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_lavendertown_Ch1
	.int gbs_lavendertown_Ch2
	.int gbs_lavendertown_Ch3
	.int gbs_lavendertown_Ch4
