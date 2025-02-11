	object_const_def
	const CRUINS_BOSS

CBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossC:	
	faceplayer
	refreshscreen
	trainerpic GEIST
	writetext GhostIntroCText	
	waitbutton
	closetrainpic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	winlosstext GhostCWinLossText, 0
	loadtrainer GEIST, GEIST3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsCBoss
	end	
	
UnlockDoorsCBoss:
	playsound SFX_1ST_PLACE

	opentext
	writetext CButtonText
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

RandomStairWarpCBOSS:
	refreshscreen
	opentext
	writetext WanttoEscapeC
	yesorno
	iftrue .EscapeC
	warp D1, 4, 4
	end

.EscapeC
	playsound SFX_EXIT_BUILDING
	warp THESITEINSIDERUINENTRANCE, 8, 1
	end

WanttoEscapeC:
	text "Looks like you can"
	line "go on or escape."
	cont "You wanna go home?"
	done

GhostIntroCText:
	text "AWAKEN... US..."
	line "TO... SUFFER..."
	done

GhostCWinLossText:
	text "PERHAPS... YOU..."
	line "ARE... WORTHY..."
	done


CBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpCBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpCBOSS
	
	
	
	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_GEIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BossC, -1
