	.include "asm/macros.inc"

	.section .rodata
	.align 1

gbs_gen1_meetrival_Ch1.AlternateTempo:
	tempo 100
	sound_loop 0, Music_MeetRival_Ch1.body

gbs_gen1_meetrival_Ch1:
	gbs_switch 0
	tempo 112
gbs_gen1_meetrival_Ch1.body:
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 4
	pitch_offset 1	@ Gen 1 perfect pitch
	note_type 12, 11, 3
	octave 4
	note D_, 1
	note Cs, 1
	note C_, 1
	octave 3
	note B_, 1
	note As, 2
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 6
	note D_, 1
	rest 3
	note D_, 1
	rest 5
	note A_, 2
	note G_, 2
	note A_, 2
gbs_gen1_meetrival_Ch1.mainloop:
	note B_, 4
	note As, 2
	note A_, 4
	note G_, 2
	octave 4
	note C_, 4
	note D_, 2
	rest 4
	note D_, 4
	note Cs, 2
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 4
	note E_, 2
	note D_, 4
	note C_, 2
	octave 3
	note B_, 4
	octave 4
	note C_, 2
	rest 4
	note G_, 4
	note G_, 2
	note Fs, 2
	note E_, 2
	note D_, 2
	note Fs, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note Fs, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note D_, 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note D_, 2
	octave 4
	note C_, 4
	octave 3
	note B_, 2
	note As, 2
	note B_, 2
	octave 4
	note C_, 2
	note F_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note F_, 2
	note Ds, 2
	note C_, 2
	octave 3
	note As, 2
	note G_, 2
	rest 4
	note As, 4
	octave 4
	note C_, 2
	octave 3
	note As, 2
	octave 4
	note C_, 2
	note_type 12, 11, 7
	octave 3
	note G_, 4
	note D_, 2
	note F_, 6
	note Fs, 4
	note D_, 2
	rest 4
	note D_, 4
	note_type 12, 11, 3
	note A_, 2
	note G_, 2
	note A_, 2
	sound_loop 0, gbs_gen1_meetrival_Ch1.mainloop

gbs_gen1_meetrival_Ch1.AlternateStartAndTempo:
	tempo 100
	sound_loop 0, Music_MeetRival_Ch1_AlternateStart.body

gbs_gen1_meetrival_Ch1.AlternateStart:
	tempo 112
gbs_gen1_meetrival_Ch1.body:
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 4
	pitch_offset 0	@ Gen 1 perfect pitch off
	note_type 12, 11, 3
	octave 3
	note D_, 1
	rest 3
	note D_, 1
	rest 5
	note A_, 2
	note G_, 2
	note A_, 2
	sound_loop 0, Music_MeetRival_Ch1.mainloop

gbs_gen1_meetrival_Ch2:
	gbs_switch 1
	duty_cycle 3
	vibrato 10, 2, 6
	note_type 12, 12, 7
	octave 4
	note B_, 1
	note As, 1
	note A_, 1
	note Gs, 1
	note G_, 2
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 6
	octave 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note D_, 1
	rest 1
	octave 4
	note D_, 2
	note F_, 2
	note Fs, 2
gbs_gen1_meetrival_Ch2.mainloop:
	note_type 12, 12, 7
	note G_, 4
	note D_, 2
	note F_, 6
	note Fs, 4
	note G_, 2
	rest 4
	note G_, 4
	note G_, 2
	note As, 2
	note B_, 2
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note As, 6
	note B_, 4
	octave 5
	note C_, 2
	rest 4
	note C_, 4
	note C_, 2
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note_type 12, 11, 0
	note D_, 16
	note_type 12, 11, 5
	note D_, 6
	note_type 12, 12, 7
	note F_, 4
	note D_, 2
	note C_, 2
	note D_, 2
	note_type 12, 11, 0
	note C_, 8
	note_type 12, 12, 7
	note C_, 8
	octave 4
	note C_, 2
	rest 4
	note As, 4
	note G_, 2
	note F_, 2
	note_type 12, 11, 0
	note G_, 16
	note_type 12, 11, 3
	note G_, 2
	octave 3
	note G_, 2
	rest 4
	note G_, 4
	octave 4
	note D_, 2
	note F_, 2
	note Fs, 2
	sound_loop 0, gbs_gen1_meetrival_Ch2.mainloop

gbs_gen1_meetrival_Ch2.AlternateStart:
	duty_cycle 3
	vibrato 10, 2, 6
	note_type 12, 12, 7
	octave 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note D_, 1
	rest 1
	octave 4
	note D_, 2
	note F_, 2
	note Fs, 2
	sound_loop 0, Music_MeetRival_Ch2.mainloop

gbs_gen1_meetrival_Ch3:
	gbs_switch 2
	note_type 12, 1, 4
	octave 5
	note D_, 2
	rest 2
	note Cs, 2
	rest 2
	note C_, 2
	rest 2
	octave 4
	note B_, 2
	rest 2
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
gbs_gen1_meetrival_Ch3.mainloop:
	note G_, 2
	octave 5
	note D_, 2
	octave 4
	note G_, 2
	rest 2
	octave 5
	note D_, 2
	octave 4
	note G_, 2
	rest 2
	octave 5
	note D_, 2
	octave 4
	note G_, 2
	rest 4
	octave 5
	note D_, 4
	octave 4
	note G_, 2
	note As, 2
	note B_, 2
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	rest 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	rest 2
	note B_, 2
	octave 5
	note C_, 2
	rest 4
	note C_, 4
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	note Fs, 2
	note A_, 2
	rest 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	rest 2
	note A_, 2
	note Fs, 2
	note A_, 2
	rest 2
	note Fs, 2
	note A_, 2
	note Fs, 2
	octave 5
	note D_, 2
	octave 4
	note A_, 2
	note E_, 2
	octave 5
	note C_, 2
	rest 2
	octave 4
	note E_, 2
	octave 5
	note C_, 2
	octave 4
	note E_, 2
	note F_, 2
	note G_, 2
	note E_, 2
	rest 4
	note E_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note As, 2
	note A_, 2
	note G_, 2
	note As, 2
	rest 2
	note G_, 2
	note As, 2
	note G_, 2
	rest 2
	note As, 2
	note G_, 2
	octave 5
	note D_, 2
	octave 4
	note G_, 2
	rest 2
	octave 5
	note D_, 2
	octave 4
	note G_, 2
	rest 2
	octave 5
	note D_, 2
	sound_loop 0, gbs_gen1_meetrival_Ch3.mainloop

gbs_gen1_meetrival_Ch3.AlternateStart:
	note_type 12, 1, 4
	octave 4
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	sound_loop 0, Music_MeetRival_Ch3.mainloop

	.align 4
	.global gbs_gen1_meetrival_Header
gbs_gen1_meetrival_Header:
	.byte 3	@ NumTrks
	.byte 0	@ NumBlks
	.byte 0	@ Priority
	.byte 0	@ Reverb

	.int voicegroup000

	.int gbs_gen1_meetrival_Ch1
	.int gbs_gen1_meetrival_Ch2
	.int gbs_gen1_meetrival_Ch3
