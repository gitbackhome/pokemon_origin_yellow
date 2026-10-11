@ Kanto-Merge (test/kanto-start):
@ These symbols were defined in HnS Kanto maps but are referenced by
@ active Johto maps. They live on here so the HnS Kanto maps can be
@ retired.

Route7_EventScript_Door::
	msgbox Route7_Text_LockedDoor, MSGBOX_SIGN
	end

Route7_Text_LockedDoor:
#if GERMAN
	.string "Abgeschlossen…$"
#else
	.string "It's locked…$"
#endif

SeafoamIslands_B1F_Text_ArticunoBattle::
	.string "Gyaoo!$"
