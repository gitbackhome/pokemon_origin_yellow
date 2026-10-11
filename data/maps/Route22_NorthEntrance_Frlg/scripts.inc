Route22_NorthEntrance_Frlg_MapScripts::
	.byte 0

Route22_NorthEntrance_EventScript_BoulderBadgeGuard::
	lock
	faceplayer
	@ Kanto merge: this gatehouse is the world border to Johto, Mt. Silver
	@ and the league. The Earth Badge counts here, not the Boulder Badge.
	setvar VAR_TEMP_1, 8
	bufferstdstring STR_VAR_1, STDSTRING_EARTH_BADGE
	goto Route22_NorthEntrance_EventScript_BadgeGuard
	end

Route22_NorthEntrance_EventScript_BoulderBadgeGuardTrigger::
	lockall
	setvar VAR_TEMP_1, 8
	setvar VAR_0x8009, 8
	bufferstdstring STR_VAR_1, STDSTRING_EARTH_BADGE
	goto Route23_EventScript_BadgeGuardTrigger
	end
