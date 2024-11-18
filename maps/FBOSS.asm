	object_const_def
	const FRUINS_BOSS

FBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossF:	
	faceplayer
	refreshscreen
	trainerpic GEIST
	writetext GhostIntroFText	
	waitbutton
	closetrainpic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	winlosstext GhostFWinLossText, 0
	loadtrainer GEIST, GEIST6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsFBoss
	end	
	
UnlockDoorsFBoss:
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .DoNotPass
	opentext
	writetext FButtonText
	promptbutton
	closetext
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end

.DoNotPass:
	opentext
	writetext OnlyElites
	promptbutton
	closetext
	warp THESITEINSIDE1F, 12, 18


RandomStairWarpFBOSS:
	warp F1, 4, 4
	end

GhostIntroFText:
	text "WE... WILL..."
	line "BURY... YOU..."
	done

GhostFWinLossText:
	text "SECRETS... DIE..."
	line "WITH... US..."
	done

OnlyElites:
	text "ONLY... THE..."
	line "ELITE... MAY..."
	cont "MOVE... ON..."
	done
	
FBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFBOSS
	

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_GEIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BossF, -1
