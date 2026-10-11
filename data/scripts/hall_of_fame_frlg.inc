EventScript_SetDefeatedEliteFourFlagsVars::
	@ Kanto merge: in HnS only the second Hall of Fame sets the title. For
	@ us Kanto is the first region, so it belongs here. Without it the
	@ trainer card shows no title, and the Safari guard in Fuchsia as well
	@ as the Eon Ticket woman in Olivine do not recognize the champion.
	setflag FLAG_IS_KANTO_CHAMPION
	@ The guard in front of Cerulean Cave stands at (7,11), i.e. on the only
	@ tile from which the entrance at (7,10) can be reached. His flag is
	@ otherwise only set in OneIsland_PokemonCenter_1F, and the Sevii Islands
	@ are not in the build - so the cave could never be entered.
	setflag FLAG_HIDE_CERULEAN_CAVE_GUARD
	clearflag FLAG_HIDE_POSTGAME_GOSSIPERS
	call EventScript_ResetEliteFour
	special Script_UpdateTrainerFanClubGameClear
	specialvar VAR_RESULT, IsNationalPokedexEnabled
	call_if_eq VAR_RESULT, FALSE, EventScript_SetReadyTryGiveNationalDexScene
	call EventScript_ResetLegendaries
	return

EventScript_SetReadyTryGiveNationalDexScene::
	setvar VAR_MAP_SCENE_PALLET_TOWN_OAK, 2
	return

EventScript_ResetLegendaries::
	clearflag FLAG_LUGIA_FLEW_AWAY
	clearflag FLAG_HO_OH_FLEW_AWAY
	clearflag FLAG_DEOXYS_FLEW_AWAY
	return

EventScript_ResetEliteFourEnd::
	call EventScript_ResetEliteFour
	end

EventScript_ResetEliteFour::
	clearflag FLAG_DEFEATED_LORELEI
	clearflag FLAG_DEFEATED_BRUNO
	clearflag FLAG_DEFEATED_AGATHA
	clearflag FLAG_DEFEATED_LANCE
	clearflag FLAG_DEFEATED_CHAMP
	cleartrainerflag TRAINER_CHAMPION_FIRST_SQUIRTLE
	cleartrainerflag TRAINER_CHAMPION_FIRST_BULBASAUR
	cleartrainerflag TRAINER_CHAMPION_FIRST_CHARMANDER
	cleartrainerflag TRAINER_CHAMPION_REMATCH_SQUIRTLE
	cleartrainerflag TRAINER_CHAMPION_REMATCH_BULBASAUR
	cleartrainerflag TRAINER_CHAMPION_REMATCH_CHARMANDER
	setvar VAR_MAP_SCENE_POKEMON_LEAGUE, 0
	return
