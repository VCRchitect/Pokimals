	object_const_def
	const ERUINS_BOSS

EBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossE:	
	faceplayer
	refreshscreen
	trainerpic GEIST
	writetext GhostIntroEText	
	waitbutton
	closetrainpic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	winlosstext GhostEWinLossText, 0
	loadtrainer GEIST, GEIST5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsEBoss
	end	
	
UnlockDoorsEBoss:
	playsound SFX_1ST_PLACE

	opentext
	writetext EButtonText
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

RandomStairWarpEBOSS:
	refreshscreen
	opentext
	writetext WanttoEscapeE
	yesorno
	iftrue .EscapeE
	warp C1, 4, 4
	end

.EscapeE
	playsound SFX_EXIT_BUILDING
	warp THESITEINSIDERUINENTRANCE, 8, 1
	end

WanttoEscapeE:
	text "Looks like you can"
	line "go on or escape."
	cont "You wanna go home?"
	done

GhostIntroEText:
	text "WE... WILL..."
	line "BURY... YOU..."
	done

GhostEWinLossText:
	text "SECRETS... DIE..."
	line "WITH... US..."
	done


EBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpEBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpEBOSS
	

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_GEIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BossE, -1
