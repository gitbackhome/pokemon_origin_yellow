Common_EventScript_SetupRivalGfxId::
#if defined(POKEMON_HNS)
	@ HnS canon: Birch's child is always May (Brendan is Norman's son).
	@ The rival graphic therefore no longer depends on the player's gender.
	setvar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RIVAL_MAY_NORMAL
	@ IMPORTANT: return, not end! This script is included via call; an end
	@ ends the whole caller. Because of that the following lines in
	@ Lavaridge Town (bike graphic, rival position) never ran - and a wrong
	@ sprite appeared when she left.
	return
#endif
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, EventScript_SetupRivalGfxIdFemale
	goto_if_eq VAR_RESULT, FEMALE, EventScript_SetupRivalGfxIdMale
	end

EventScript_SetupRivalGfxIdFemale::
	setvar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RIVAL_MAY_NORMAL
	return

EventScript_SetupRivalGfxIdMale::
	setvar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RIVAL_BRENDAN_NORMAL
	return

Common_EventScript_SetupRivalOnBikeGfxId::
#if IS_HNS
	@ HnS canon: on the bike, too, the rival is always May. Without this
	@ switch a female player character saw Brendan's bike sprite after the
	@ Route 110 battle (playtest report).
	setvar VAR_OBJ_GFX_ID_3, OBJ_EVENT_GFX_RIVAL_MAY_MACH_BIKE
	return
#endif
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, EventScript_SetupRivalOnBikeGfxIdFemale
	goto_if_eq VAR_RESULT, FEMALE, EventScript_SetupRivalOnBikeGfxIdMale
	end

EventScript_SetupRivalOnBikeGfxIdFemale::
	setvar VAR_OBJ_GFX_ID_3, OBJ_EVENT_GFX_RIVAL_MAY_MACH_BIKE
	return

EventScript_SetupRivalOnBikeGfxIdMale::
	setvar VAR_OBJ_GFX_ID_3, OBJ_EVENT_GFX_RIVAL_BRENDAN_MACH_BIKE
	return

@ Unused
Common_EventScript_SetupRivalGfxIdSameGender::
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, EventScript_SetupRivalGfxIdMale2
	goto_if_eq VAR_RESULT, FEMALE, EventScript_SetupRivalGfxIdFemale2
	end

EventScript_SetupRivalGfxIdMale2::
	setvar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RIVAL_BRENDAN_NORMAL
	return

EventScript_SetupRivalGfxIdFemale2::
	setvar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RIVAL_MAY_NORMAL
	return
