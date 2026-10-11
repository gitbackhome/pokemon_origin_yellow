ReceptionGate_hns_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, ReceptionGate_EventScript_SetNorthWarp
	map_script MAP_SCRIPT_ON_RESUME, ReceptionGate_EventScript_SetNorthWarp
	.byte 0

ReceptionGate_EventScript_Janine::
    lock
    faceplayer
    msgbox ReceptionGate_Text_Janine, MSGBOX_DEFAULT
    closemessage
    fadescreenswapbuffers FADE_TO_BLACK
    setflag FLAG_HIDE_ROUTE22_JANINE
    removeobject LOCALID_INDIGOJUNCTION_JANINE
    fadescreenswapbuffers FADE_FROM_BLACK
    clearflag FLAG_HIDE_DOJO_JANINE
    release
    end

ReceptionGate_Text_Janine:
#if GERMAN
	.string "Janina: Ich bin auf dem Weg zu meinem\n"
	.string "Vater, um ihm das Mittagessen zu\l"
	.string "bringen.\p"
	.string "Die Top Vier hat keine Zeit für\n"
	.string "Erholung, Tag oder Nacht.\p"
	.string "Es ist wirklich harte Arbeit, weißt\n"
	.string "du? \p"
	.string "Wenn du bereit für einen weiteren\n"
	.string "Kampf bist, ich bin später im Dojo.$"
#else
    .string "JANINE: I'm on the way to my dad's\n"
    .string "house to give him his lunch.\p"
    .string "The ELITE FOUR has no time to rest\n"
    .string "day or night. It's such hard work,\l"
    .string "you know?\p"
    .string "If you're ready for another battle,\n"
    .string "I'll be at the DOJO later.$"
#endif


ReceptionGate_EventScript_Officer::
	@ Origin Jade: in HnS he congratulated everyone on "the eight BADGES of
	@ JOHTO". He now only says so once the north exit really leads to Johto's
	@ Victory Road (ReceptionGate_EventScript_SetNorthWarp). Before that he
	@ gives his checkpoint line, and while the legendary event is still open
	@ the same line as ReceptionGate_EventScript_LeagueCheck. All three texts
	@ are HnS's own.
	lock
	faceplayer
	specialvar VAR_RESULT, CountJohtoBadges
	goto_if_lt VAR_RESULT, 8, ReceptionGate_EventScript_OfficerCheckpoint
	goto_if_lt VAR_ECRUTEAK_CITY_THEATER, 8, ReceptionGate_EventScript_OfficerLegendary
	msgbox VictoryRoadGate_Text_EightBadges, MSGBOX_DEFAULT
	release
	end

ReceptionGate_EventScript_OfficerCheckpoint::
	msgbox VictoryRoadGate_Text_Officer, MSGBOX_DEFAULT
	release
	end

ReceptionGate_EventScript_OfficerLegendary::
	msgbox VictoryRoadGate_Text_Kimono, MSGBOX_DEFAULT
	release
	end

@ HnS's checkpoint on the south entrance (coord trigger at 11,14 while
@ VAR_ROUTE27_STATE is 1). Origin Jade no longer references it: here the
@ south entrance is the way home from Johto to Kanto and has to stay open
@ (the trigger turned everyone back until the legendary event in Ecruteak
@ was over, and then checked FLAG_BADGE08_GET, a Kanto badge in OJ). Its jobs
@ moved to the north exit: the warp switch in
@ ReceptionGate_EventScript_SetNorthWarp follows the league change (badges
@ and legendary event, PokemonLeague_EventScript_CheckLeagueChanged), and
@ ReceptionGate_EventScript_LeagueCheck stops players with all eight Johto
@ badges until the legendary event is done. Kept unchanged to ease HnS
@ merges.
ReceptionGate_Trigger::
    lock
    playse SE_PIN
    applymovement LOCALID_INDIGOJUNCTION_POLICEMAN, Common_Movement_ExclamationMark
    delay 55
    waitmovement LOCALID_INDIGOJUNCTION_POLICEMAN
    goto_if_lt VAR_ECRUTEAK_CITY_THEATER, 8, ReceptionGate_EventScript_Kimono
    msgbox VictoryRoadGate_Text_Officer, MSGBOX_DEFAULT
    goto_if_unset FLAG_BADGE08_GET, ReceptionGate_EventScript_NotEnough
    msgbox VictoryRoadGate_Text_EightBadges, MSGBOX_DEFAULT
    closemessage
    setvar VAR_ROUTE27_STATE, 2
    release
    end

ReceptionGate_EventScript_Kimono::
    msgbox VictoryRoadGate_Text_Kimono, MSGBOX_DEFAULT
    closemessage
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown1
    waitmovement 0
    release
    end

ReceptionGate_EventScript_NotEnough::
    msgbox VictoryRoadGate_Text_NotEnoughBadges, MSGBOX_DEFAULT
    closemessage
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown1
    waitmovement 0
    release
    end

ReceptionGate_EventScript_SilverGuard::
    msgbox VictoryRoadGate_Text_LeftBlackBelt, MSGBOX_NPC
    end
ReceptionGate_EventScript_KantoGuard::
    msgbox VictoryRoadGate_Text_RightBlackBelt, MSGBOX_NPC
    end

VictoryRoadGate_Text_Officer:
#if GERMAN
	.string "Nur Trainer, die sich als würdig erwiesen\n"
	.string "haben, dürfen eintreten.$"
#else
    .string "Only trainers who have proven\n"
    .string "themselves may pass.$"
#endif

VictoryRoadGate_Text_Kimono:
#if GERMAN
	.string "Entschuldige, Kleiner, dieser Weg ist\n"
	.string "geschlossen, bis jemand sich des\p"
	.string "legendären Pokémon annimmt…$"
#else
    .string "Sorry kid, this way is closed until\n"
    .string "someone deals with that LEGENDARY\l"
    .string "POKéMON...$"
#endif

VictoryRoadGate_Text_NotEnoughBadges:
#if GERMAN
	.string "Du besitzt nicht alle Orden von Johto.\p"
	.string "Tut mir leid. Ich darf dich nicht\n"
	.string "passieren lassen.$"
#else
    .string "You don't have all the GYM BADGES\n"
    .string "of JOHTO.\p"
    .string "I'm sorry, but I can't let you go\n"
    .string "through.$"
#endif

VictoryRoadGate_Text_EightBadges:
#if GERMAN
	.string "Oh! Alle acht Orden von Johto!\p"
	.string "Geh bitte weiter!$"
#else
    .string "Oh! The eight BADGES of JOHTO!\p"
    .string "Please, go right on through!$"
#endif

VictoryRoadGate_Text_LeftBlackBelt:
#if GERMAN
	.string "Dieser Weg führt zum Silberberg.\p"
	.string "Dir werden beängstigend starke\n"
	.string "Pokémon begegnen.$"
#else
    .string "This way leads to MT.SILVER.\p"
    .string "You'll see scary-strong POKéMON out\n"
    .string "there.$"
#endif

VictoryRoadGate_Text_RightBlackBelt:
#if GERMAN
	.string "Du kommst von drüben, oder?\p"
	.string "Man sieht es an der Art, wie jemand\n"
	.string "durch die Tür kommt.\p"
	.string "Hier fängt Johto an. Viel Glück.$"
#else
	.string "You have come from over there,\n"
	.string "have you not?\p"
	.string "You can tell by the way a person\n"
	.string "walks through that door.\p"
	.string "JOHTO starts here. Good luck.$"
#endif

@ ============================================================================
@ Kanto merge (test/kanto-start): gate logic for the four-way junction.
@ The player comes from Kanto (east). North = league, south = Johto,
@ west = Mt. Silver. Johto opens after the (Kanto) Elite Four, Mt. Silver
@ only after the Johto league (see ReceptionGate_EventScript_BlockMtSilver).
@ North leads to Kanto's league until the league has changed, then to
@ Johto's league (see ReceptionGate_EventScript_SetNorthWarp).
@ Each check has its own temp var (Johto VAR_TEMP_5, Mt. Silver VAR_TEMP_6,
@ league VAR_TEMP_7): passing one of them must not switch off the other two
@ for the rest of the visit.
@ ============================================================================

@ Origin Jade (decisions 2026-10-10 and 2026-10-11,
@ docs/origin_jade/DECISIONS.md, D-010): the north exit leads to Kanto's
@ league (Route 23 and the FRLG Victory Road) until the league has changed -
@ all eight Johto badges and the legendary event done - and from then on to
@ Johto's Victory Road and Johto's league (Indigo Plateau, HnS maps).
@ Training against Kanto's league stays possible until then; afterwards
@ Kanto's league is gone for good (the story: the league has changed).
@ Both north door warps are MAP_DYNAMIC. The target is set on every map load
@ (ON_TRANSITION) and again on resume (ON_RESUME), which also covers
@ continuing a save made inside the gate. The door on Kanto's Indigo Plateau
@ switches under the same condition (IndigoPlateau_Exterior_Frlg).
ReceptionGate_EventScript_SetNorthWarp::
	call PokemonLeague_EventScript_CheckLeagueChanged
	goto_if_eq VAR_RESULT, TRUE, ReceptionGate_EventScript_NorthToJohtoLeague
	setdynamicwarp MAP_ROUTE23, 2
	end

ReceptionGate_EventScript_NorthToJohtoLeague::
	setdynamicwarp MAP_VICTORY_ROAD_KANTO_B2F_HNS, 0
	@ HnS armed Silver's battle on Johto's Victory Road when the officer let
	@ the player through (VAR_ROUTE27_STATE 1 -> 2, ReceptionGate_Trigger).
	@ That checkpoint is gone, so the state moves on here.
	goto_if_ne VAR_ROUTE27_STATE, 1, ReceptionGate_EventScript_NorthWarpDone
	setvar VAR_ROUTE27_STATE, 2
ReceptionGate_EventScript_NorthWarpDone:
	end

ReceptionGate_EventScript_BlockJohto::
	lock
	goto_if_set FLAG_SYS_GAME_CLEAR, ReceptionGate_EventScript_PassJohto
	applymovement LOCALID_INDIGOJUNCTION_POLICEMAN, Common_Movement_ExclamationMark
	waitmovement 0
	msgbox ReceptionGate_Text_JohtoClosed, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkUp1
	waitmovement 0
	release
	end

ReceptionGate_EventScript_PassJohto::
	setvar VAR_TEMP_5, 1
	release
	end

ReceptionGate_EventScript_BlockMtSilver::
	lock
	@ Origin Jade: not FLAG_SYS_GAME_CLEAR - Kanto's Hall of Fame already
	@ sets that, so Mt. Silver would be open from the arrival in Johto on
	@ and Red at levels 77 to 93 reachable before the first Johto badge. It
	@ only opens with the win over Johto's league.
	goto_if_set FLAG_IS_JOHTO_CHAMPION, ReceptionGate_EventScript_PassMtSilver
	msgbox ReceptionGate_Text_MtSilverClosed, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkRight1
	waitmovement 0
	release
	end

ReceptionGate_EventScript_PassMtSilver::
	setvar VAR_TEMP_6, 1
	release
	end

ReceptionGate_Text_JohtoClosed:
#if GERMAN
	.string "Halt! Hinter diesem Tor beginnt Johto.\p"
	.string "Der Weg ist gesperrt, solange die\n"
	.string "Top Vier nicht besiegt sind.\p"
	.string "Erst musst du dich hier beweisen.$"
#else
	.string "Hold it! Beyond this gate lies JOHTO.\p"
	.string "The road stays closed until the\n"
	.string "ELITE FOUR have been defeated.\p"
	.string "Prove yourself here first.$"
#endif

ReceptionGate_Text_MtSilverClosed:
#if GERMAN
	.string "Der Weg zum Silberberg ist gesperrt.\p"
	.string "Dort draußen hausen Pokémon, gegen\n"
	.string "die selbst die Top Vier alt aussehen.\p"
	.string "Kantos Orden zählen hier nicht. Komm\n"
	.string "wieder, wenn du auch Johtos Liga\l"
	.string "geschlagen hast.$"
#else
	.string "The road to MT.SILVER is closed.\p"
	.string "The POKéMON out there would make\n"
	.string "even the ELITE FOUR look tame.\p"
	.string "KANTO BADGES don't count here. Come\n"
	.string "back when you've beaten JOHTO's\l"
	.string "LEAGUE too.$"
#endif

ReceptionGate_EventScript_LeagueCheck::
	lock
	goto_if_unset FLAG_BADGE01_GET, ReceptionGate_EventScript_LeagueDenied
	goto_if_unset FLAG_BADGE02_GET, ReceptionGate_EventScript_LeagueDenied
	goto_if_unset FLAG_BADGE03_GET, ReceptionGate_EventScript_LeagueDenied
	goto_if_unset FLAG_BADGE04_GET, ReceptionGate_EventScript_LeagueDenied
	goto_if_unset FLAG_BADGE05_GET, ReceptionGate_EventScript_LeagueDenied
	goto_if_unset FLAG_BADGE06_GET, ReceptionGate_EventScript_LeagueDenied
	goto_if_unset FLAG_BADGE07_GET, ReceptionGate_EventScript_LeagueDenied
	goto_if_unset FLAG_BADGE08_GET, ReceptionGate_EventScript_LeagueDenied
	@ Origin Jade: HnS only let the player onto Johto's Victory Road once the
	@ legendary event at the Ecruteak theater was over
	@ (VAR_ECRUTEAK_CITY_THEATER 8). That check sat on the south entrance
	@ (ReceptionGate_Trigger); it now guards the north exit for players with
	@ all eight Johto badges. Kanto's league is no goal for them any more, and
	@ the exit leads to Johto's league once the legendary event is done - the
	@ moment the league changes (ReceptionGate_EventScript_SetNorthWarp).
	specialvar VAR_RESULT, CountJohtoBadges
	goto_if_lt VAR_RESULT, 8, ReceptionGate_EventScript_LeaguePass
	goto_if_lt VAR_ECRUTEAK_CITY_THEATER, 8, ReceptionGate_EventScript_Kimono
ReceptionGate_EventScript_LeaguePass:
	setvar VAR_TEMP_7, 1
	release
	end

ReceptionGate_EventScript_LeagueDenied::
	msgbox ReceptionGate_Text_LeagueDenied, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown1
	waitmovement 0
	release
	end

ReceptionGate_Text_LeagueDenied:
#if GERMAN
	.string "Nur Trainer mit allen acht Orden von\n"
	.string "Kanto duerfen zur Siegesstrasse.\p"
	.string "Komm wieder, wenn du so weit bist.$"
#else
	.string "Only trainers with all eight BADGES\n"
	.string "of KANTO may enter VICTORY ROAD.\p"
	.string "Come back when you're ready.$"
#endif
