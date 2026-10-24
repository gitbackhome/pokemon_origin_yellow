	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_defeatedwildmon_Ch1:
	gbs_switch 0
	tempo 112
	volume 7, 7
	@ Gen 1 execute_music: no-op for regular GBS music
	duty_cycle 3
	vibrato 6, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	tempo 112
	note_type 12, 11, 7
	octave 3
	note B_, 1
	note A_, 1
	note Gs, 1
	note Fs, 1
	note E_, 12
gbs_gen1_defeatedwildmon_Ch1.mainloop:
	note_type 12, 6, 2
	note E_, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note Gs, 2
	note Gs, 4
	note A_, 2
	note A_, 2
	note A_, 4
	note Gs, 2
	note Gs, 2
	note Gs, 4
	note E_, 2
	note Fs, 2
	note E_, 2
	note Fs, 2
	note Gs, 2
	note Gs, 2
	note Gs, 4
	note A_, 2
	note A_, 2
	note A_, 4
	note Gs, 8
	note F_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note A_, 2
	note A_, 4
	note As, 2
	note As, 2
	note As, 4
	note A_, 2
	note A_, 2
	note A_, 4
	note F_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note A_, 2
	note A_, 4
	note As, 2
	note As, 2
	note As, 4
	note A_, 8
	sound_loop 0, gbs_gen1_defeatedwildmon_Ch1.mainloop

gbs_gen1_defeatedwildmon_Ch2:
	gbs_switch 1
	@ Gen 1 execute_music: no-op for regular GBS music
	duty_cycle 2
	note_type 12, 12, 3
	octave 4
	note E_, 1
	note Fs, 1
	note Gs, 1
	note A_, 1
	note_type 12, 12, 7
	note B_, 12
gbs_gen1_defeatedwildmon_Ch2.mainloop:
	note_type 12, 8, 2
	octave 3
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note B_, 2
	note B_, 2
	note B_, 4
	octave 4
	note Cs, 2
	note Cs, 2
	note Cs, 4
	octave 3
	note B_, 2
	note B_, 2
	note B_, 4
	note B_, 2
	note A_, 2
	note Gs, 2
	note A_, 2
	note B_, 2
	note B_, 2
	note B_, 4
	octave 4
	note Cs, 2
	note Cs, 2
	note Cs, 4
	octave 3
	note B_, 8
	octave 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note As, 2
	octave 4
	note C_, 2
	note C_, 2
	note C_, 4
	note D_, 2
	note D_, 2
	note D_, 4
	note C_, 2
	note C_, 2
	note C_, 4
	note C_, 2
	octave 3
	note As, 2
	note A_, 2
	note As, 2
	octave 4
	note C_, 2
	note C_, 2
	note C_, 4
	note D_, 2
	note D_, 2
	note D_, 4
	note C_, 8
	sound_loop 0, gbs_gen1_defeatedwildmon_Ch2.mainloop

gbs_gen1_defeatedwildmon_Ch3:
	gbs_switch 2
	@ Gen 1 execute_music: no-op for regular GBS music
	note_type 12, 2, 0
	octave 5
	note E_, 1
	rest 1
	octave 6
	note Cs, 1
	rest 1
	octave 5
	note B_, 1
	rest 1
	octave 6
	note Ds, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	rest 3
gbs_gen1_defeatedwildmon_Ch3.mainloop:
	octave 4
	note E_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 3
	octave 5
	note E_, 1
	rest 3
	octave 4
	note Fs, 1
	rest 1
	octave 5
	note Fs, 1
	rest 1
	octave 4
	note Fs, 1
	rest 3
	note Fs, 1
	rest 1
	octave 5
	note Ds, 1
	rest 1
	octave 4
	note Fs, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 5
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 3
	octave 5
	note E_, 1
	rest 3
	octave 4
	note Fs, 1
	rest 1
	octave 5
	note Fs, 1
	rest 1
	octave 4
	note Fs, 1
	rest 3
	octave 5
	note E_, 1
	rest 3
	octave 4
	note Ds, 4
	octave 4
	note F_, 1
	rest 1
	octave 5
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 5
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 3
	octave 5
	note F_, 1
	rest 3
	octave 4
	note G_, 1
	rest 1
	octave 5
	note G_, 1
	rest 1
	octave 4
	note G_, 1
	rest 3
	note F_, 1
	rest 1
	octave 5
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 5
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 5
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 3
	octave 5
	note F_, 1
	rest 3
	octave 4
	note G_, 1
	rest 1
	octave 5
	note G_, 1
	rest 1
	octave 4
	note G_, 1
	rest 3
	octave 5
	note F_, 1
	rest 3
	octave 4
	note Ds, 4
	sound_loop 0, gbs_gen1_defeatedwildmon_Ch3.mainloop

	.align 4
	.global gbs_gen1_defeatedwildmon_Header
gbs_gen1_defeatedwildmon_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_defeatedwildmon_Ch1
	.int gbs_gen1_defeatedwildmon_Ch2
	.int gbs_gen1_defeatedwildmon_Ch3
