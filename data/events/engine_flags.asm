engine_flag: MACRO
; location, bit
; (all locations are in WRAM bank 1)
	dwb \1 + (\2 / 8), 1 << (\2 % 8)
ENDM

EngineFlags:
; entries correspond to ENGINE_* constants
	table_width 3, EngineFlags

	; pokegear
	engine_flag wPokegearFlags, POKEGEAR_RADIO_CARD_F
	engine_flag wPokegearFlags, POKEGEAR_MAP_CARD_F
	engine_flag wPokegearFlags, POKEGEAR_PHONE_CARD_F
	engine_flag wPokegearFlags, POKEGEAR_EXPN_CARD_F
	engine_flag wPokegearFlags, POKEGEAR_OBTAINED_F

	; day-care
	engine_flag wDayCareMan, DAYCAREMAN_HAS_EGG_F
	engine_flag wDayCareMan, DAYCAREMAN_HAS_MON_F
	engine_flag wDayCareLady, DAYCARELADY_HAS_MON_F

	engine_flag wMomSavingMoney, MOM_SAVING_SOME_MONEY_F
	engine_flag wMomSavingMoney, MOM_ACTIVE_F

	engine_flag wUnusedTwoDayTimerOn, 0 ; unused, possibly related to a 2-day timer

	engine_flag wStatusFlags, STATUSFLAGS_POKEDEX_F
	engine_flag wStatusFlags, STATUSFLAGS_LETTAH_DEX_F
	engine_flag wStatusFlags, STATUSFLAGS_CAUGHT_POKERUS_F
	engine_flag wStatusFlags, STATUSFLAGS_ROCKET_SIGNAL_F
	engine_flag wStatusFlags, STATUSFLAGS_HALL_OF_FAME_F
	engine_flag wStatusFlags, STATUSFLAGS_MAIN_MENU_MOBILE_CHOICES_F
	engine_flag wStatusFlags2, STATUSFLAGS2_UNUSED_5_F

	engine_flag wBikeFlags, BIKEFLAGS_STRENGTH_ACTIVE_F
	engine_flag wBikeFlags, BIKEFLAGS_ALWAYS_ON_BIKE_F
	engine_flag wBikeFlags, BIKEFLAGS_DOWNHILL_F

	engine_flag wJohtoBadges, ZEPHYRBADGE
	engine_flag wJohtoBadges, HIVEBADGE
	engine_flag wJohtoBadges, PLAINBADGE
	engine_flag wJohtoBadges, FOGBADGE
	engine_flag wJohtoBadges, MINERALBADGE
	engine_flag wJohtoBadges, STORMBADGE
	engine_flag wJohtoBadges, GLACIERBADGE
	engine_flag wJohtoBadges, RISINGBADGE

	engine_flag wKantoBadges, BOULDERBADGE
	engine_flag wKantoBadges, CASCADEBADGE
	engine_flag wKantoBadges, THUNDERBADGE
	engine_flag wKantoBadges, RAINBOWBADGE
	engine_flag wKantoBadges, SOULBADGE
	engine_flag wKantoBadges, MARSHBADGE
	engine_flag wKantoBadges, VOLCANOBADGE
	engine_flag wKantoBadges, EARTHBADGE

	; lettah sets (see data/wild/unlocked_lettahs.asm)
	engine_flag wUnlockedLettahs, 0 ; A-K
	engine_flag wUnlockedLettahs, 1 ; L-R
	engine_flag wUnlockedLettahs, 2 ; S-W
	engine_flag wUnlockedLettahs, 3 ; X-Z
	engine_flag wUnlockedLettahs, 4 ; unused
	engine_flag wUnlockedLettahs, 5 ; unused
	engine_flag wUnlockedLettahs, 6 ; unused
	engine_flag wUnlockedLettahs, 7 ; unused

	; fly
	engine_flag wVisitedSpawns, SPAWN_HOME
	engine_flag wVisitedSpawns, SPAWN_INDIGO
	engine_flag wVisitedSpawns, SPAWN_NEW_BARK
	engine_flag wVisitedSpawns, SPAWN_THESITEINSIDE1F 
	
	engine_flag wLuckyNumberShowFlag, LUCKYNUMBERSHOW_GAME_OVER_F

	engine_flag wStatusFlags2, STATUSFLAGS2_UNUSED_3_F
	engine_flag wDailyFlags1, DAILYFLAGS1_FISH_SWARM_F
	engine_flag wDailyFlags1, DAILYFLAGS1_TIME_CAPSULE_F
	engine_flag wDailyFlags1, DAILYFLAGS1_ALL_FRUIT_TREES_F
	engine_flag wDailyFlags2, DAILYFLAGS2_INDIGO_PLATEAU_RIVAL_FIGHT_F
	engine_flag wDailyFlags2, DAILYFLAGS2_MOVE_TUTOR_F
	engine_flag wDailyFlags2, DAILYFLAGS2_BUENAS_PASSWORD_F

	engine_flag wSwarmFlags, SWARMFLAGS_BUENAS_PASSWORD_F

	engine_flag wGameTimerPaused, GAME_TIMER_MOBILE_F

	engine_flag wCelebiEvent, CELEBIEVENT_FOREST_IS_RESTLESS_F

	; rematches
	engine_flag wDailyRematchFlags,  0 ; jack
	engine_flag wDailyRematchFlags,  1 ; huey
	engine_flag wDailyRematchFlags,  2 ; gaven
	engine_flag wDailyRematchFlags,  3 ; beth
	engine_flag wDailyRematchFlags,  4 ; jose
	engine_flag wDailyRematchFlags,  5 ; reena
	engine_flag wDailyRematchFlags,  6 ; joey
	engine_flag wDailyRematchFlags,  7 ; wade
	engine_flag wDailyRematchFlags,  8 ; ralph
	engine_flag wDailyRematchFlags,  9 ; liz
	engine_flag wDailyRematchFlags, 10 ; anthony
	engine_flag wDailyRematchFlags, 11 ; todd
	engine_flag wDailyRematchFlags, 12 ; gina
	engine_flag wDailyRematchFlags, 13 ; arnie
	engine_flag wDailyRematchFlags, 14 ; alan
	engine_flag wDailyRematchFlags, 15 ; dana
	engine_flag wDailyRematchFlags, 16 ; chad
	engine_flag wDailyRematchFlags, 17 ; tully
	engine_flag wDailyRematchFlags, 18 ; brent
	engine_flag wDailyRematchFlags, 19 ; tiffany
	engine_flag wDailyRematchFlags, 20 ; vance
	engine_flag wDailyRematchFlags, 21 ; wilton
	engine_flag wDailyRematchFlags, 22 ; parry
	engine_flag wDailyRematchFlags, 23 ; erin

	engine_flag wDailyPhoneItemFlags, 0 ; beverly has nugget
	engine_flag wDailyPhoneItemFlags, 1 ; jose has star piece
	engine_flag wDailyPhoneItemFlags, 2 ; wade has item (see EVENT_WADE_HAS_*** in constants/event_flags.asm)
	engine_flag wDailyPhoneItemFlags, 3 ; gina has leaf stone
	engine_flag wDailyPhoneItemFlags, 4 ; alan has fire stone
	engine_flag wDailyPhoneItemFlags, 5 ; liz has thunderstone
	engine_flag wDailyPhoneItemFlags, 6 ; derek has nugget
	engine_flag wDailyPhoneItemFlags, 7 ; tully has water stone
	engine_flag wDailyPhoneItemFlags, 8 ; tiffany has pink bow
	engine_flag wDailyPhoneItemFlags, 9 ; wilton has item (see EVENT_WILTON_HAS_*** in constants/event_flags.asm)

	engine_flag wDailyPhoneTimeOfDayFlags,  0 ; jack
	engine_flag wDailyPhoneTimeOfDayFlags,  1 ; huey
	engine_flag wDailyPhoneTimeOfDayFlags,  2 ; gaven
	engine_flag wDailyPhoneTimeOfDayFlags,  3 ; beth
	engine_flag wDailyPhoneTimeOfDayFlags,  4 ; jose
	engine_flag wDailyPhoneTimeOfDayFlags,  5 ; reena
	engine_flag wDailyPhoneTimeOfDayFlags,  6 ; joey
	engine_flag wDailyPhoneTimeOfDayFlags,  7 ; wade
	engine_flag wDailyPhoneTimeOfDayFlags,  8 ; ralph
	engine_flag wDailyPhoneTimeOfDayFlags,  9 ; liz
	engine_flag wDailyPhoneTimeOfDayFlags, 10 ; anthony
	engine_flag wDailyPhoneTimeOfDayFlags, 11 ; todd
	engine_flag wDailyPhoneTimeOfDayFlags, 12 ; gina
	engine_flag wDailyPhoneTimeOfDayFlags, 13 ; arnie
	engine_flag wDailyPhoneTimeOfDayFlags, 14 ; alan
	engine_flag wDailyPhoneTimeOfDayFlags, 15 ; dana
	engine_flag wDailyPhoneTimeOfDayFlags, 16 ; chad
	engine_flag wDailyPhoneTimeOfDayFlags, 17 ; tully
	engine_flag wDailyPhoneTimeOfDayFlags, 18 ; brent
	engine_flag wDailyPhoneTimeOfDayFlags, 19 ; tiffany
	engine_flag wDailyPhoneTimeOfDayFlags, 20 ; vance
	engine_flag wDailyPhoneTimeOfDayFlags, 21 ; wilton
	engine_flag wDailyPhoneTimeOfDayFlags, 22 ; parry
	engine_flag wDailyPhoneTimeOfDayFlags, 23 ; erin

	engine_flag wPlayerSpriteSetupFlags, PLAYERSPRITESETUP_FEMALE_TO_MALE_F

	engine_flag wSwarmFlags, SWARMFLAGS_TSUCHINOKO_SWARM_F
	engine_flag wSwarmFlags, SWARMFLAGS_DRAGONFLY_SWARM_F
	
	engine_flag wFlagTest, ENGINE_TESTINGFLAG1
	engine_flag wFlagTest, ENGINE_TESTINGFLAG2
