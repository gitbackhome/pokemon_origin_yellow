Route26North_hns_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, Route26North_OnTransition
	.byte 0

@ Kanto merge: the first Johto ground behind the gatehouse. From here on
@ the region map shows the combined Johto/Kanto view instead of only Kanto.
Route26North_OnTransition::
	setflag FLAG_VISITED_JOHTO
	@ Kanto merge: fly point Route 26. The trigger at (12,6) sits right below
	@ the gatehouse exit but can be walked around when coming in. Setting it
	@ on map change is reliable.
	setflag FLAG_VISITED_RECEPTION_GATE
	end

Route26North_Trigger::
	setflag FLAG_VISITED_RECEPTION_GATE
	setvar VAR_TEMP_0, 1
	end
