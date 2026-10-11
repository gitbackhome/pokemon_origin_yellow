MtSilver_1F_MoltresRoom_hns_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, MtSilver_1F_MoltresRoom_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, MtSilver_1F_MoltresRoom_OnResume
	.byte 0

MtSilver_1F_MoltresRoom_OnResume::
	setescapewarp MAP_MT_SILVER_OUTSIDE_HNS, 17, 8
	end

MtSilver_1F_MoltresRoom_OnTransition: 
	callnative SetTimeBasedEncounters
	@ Origin Jade (D-022): this Moltres never appears (see below).
	setflag FLAG_HIDE_MOLTRES
	end


@ Origin Jade (decision 2026-10-11, D-022): HnS put a second Moltres
@ here (level 50, FLAG_HIDE_MOLTRES). Origin Jade already has one in Kanto
@ (VictoryRoad_4F_Frlg, level 40, FLAG_HIDE_MOLTRES_KANTO), so the player
@ could have caught it twice. The object stays in map.json only so that a
@ save made in this room before the change still finds its template; it
@ never spawns (ON_TRANSITION above), and a restored one just goes away.
MtSilver_1F_MoltresRoom_EventScript_Moltres::
	setflag FLAG_HIDE_MOLTRES
	removeobject LOCALID_MTSILVER_MOLTRES
	end
