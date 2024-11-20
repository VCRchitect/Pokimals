	object_const_def
	const BRUINS_BOSS

BBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossB:	
	faceplayer
	refreshscreen
	trainerpic GEIST
	writetext GhostIntroBText	
	waitbutton
	closetrainpic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	winlosstext GhostBWinLossText, 0
	loadtrainer GEIST, GEIST2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBBoss
	end	
	
UnlockDoorsBBoss:
	playsound SFX_1ST_PLACE 

	opentext
	writetext BButtonText
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

GhostIntroBText:
	text "YOU... HAVE..."
	line "DISTURBED... US..."
	done

GhostBWinLossText:
	text "SLEEP... CALLS..."
	line "TO... ME..."
	done

RandomStairWarpBBOSS:
	refreshscreen
	opentext
	writetext WanttoEscapeB
	yesorno
	iftrue .EscapeB
	warp C1, 4, 4
	end

.EscapeB
	playsound SFX_EXIT_BUILDING
	warp THESITEINSIDERUINENTRANCE, 8, 1
	end

WanttoEscapeB:
	text "Looks like you can"
	line "go on or escape."
	cont "You wanna go home?"
	done
	



BBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpBBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpBBOSS	

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_GEIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BossB, -1
