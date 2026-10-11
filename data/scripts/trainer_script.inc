Std_RegisteredInMatchCall::
#if IS_HNS
	@ SetMatchCallRegisteredFlag reports via VAR_RESULT whether registration
	@ was possible at all. Otherwise the fanfare claimed a registration that
	@ never happened.
	goto_if_eq VAR_RESULT, FALSE, Std_RegisteredInMatchCall_Skip
#endif
	buffertrainerclassname STR_VAR_1, VAR_0x8000
	buffertrainername STR_VAR_2, VAR_0x8000
	closemessage
	delay 30
	playfanfare MUS_REGISTER_MATCH_CALL
	msgbox gText_RegisteredTrainerinPokeNav, MSGBOX_DEFAULT
	waitfanfare
	closemessage
	delay 30
#if IS_HNS
Std_RegisteredInMatchCall_Skip:
#endif
	return

EventScript_TryGetTrainerScript::
	special ShouldTryGetTrainerScript
	goto_if_eq VAR_RESULT, TRUE, EventScript_GotoTrainerScript
	releaseall
	end

EventScript_GotoTrainerScript::
	gotobeatenscript
	releaseall
	end

EventScript_ObjectApproachPlayer::
	lock
	special DoTrainerApproach
	waitstate
	gotonative LoadTrainerObjectScript
