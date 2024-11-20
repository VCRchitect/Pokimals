	object_const_def
	const DRUINS_BOSS

DBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossD:	
	faceplayer
	refreshscreen
	trainerpic GEIST
	writetext GhostIntroDText	
	waitbutton
	closetrainpic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	winlosstext GhostDWinLossText, 0
	loadtrainer GEIST, GEIST4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsDBoss
	end	
	
UnlockDoorsDBoss:
	playsound SFX_1ST_PLACE

	opentext
	writetext DButtonText
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

RandomStairWarpDBOSS:
	refreshscreen
	opentext
	writetext WanttoEscapeD
	yesorno
	iftrue .EscapeD
	warp E1, 4, 4
	end

.EscapeD
	playsound SFX_EXIT_BUILDING
	warp THESITEINSIDERUINENTRANCE, 8, 1
	end

WanttoEscapeD:
	text "Looks like you can"
	line "go on or escape."
	cont "You wanna go home?"
	done

GhostIntroDText:
	text "THESE... RUINS..."
	line "ARE... OURS..."
	done

GhostDWinLossText:
	text "YOU... WILL..."
	line "NEVER... LEAVE..."
	done


DBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpDBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpDBOSS
	
	
	
	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_GEIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BossD, -1
