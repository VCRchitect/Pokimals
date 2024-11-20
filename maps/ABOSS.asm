	object_const_def
	const ARUINS_BOSS

ABOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossA:	
	faceplayer
	refreshscreen
	trainerpic GEIST
	writetext GhostIntroText	
	waitbutton
	closetrainpic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	winlosstext GhostWinLossText, 0
	loadtrainer GEIST, GEIST1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsABoss
	end	
	
UnlockDoorsABoss:
	playsound SFX_1ST_PLACE

	opentext
	writetext ButtonText
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

RandomStairWarpABOSS:
	refreshscreen
	opentext
	writetext WanttoEscapeA
	yesorno
	iftrue .EscapeA
	warp B1, 4, 4
	end

.EscapeA
	playsound SFX_EXIT_BUILDING
	warp THESITEINSIDERUINENTRANCE, 8, 1
	end

WanttoEscapeA:
	text "Looks like you can"
	line "go on or escape."
	cont "You wanna go home?"
	done

GhostIntroText:
	text "LET... THE..."
	line "PAST... SLUMBER..."
	done

GhostWinLossText:
	text "TO... REST..."
	line "I... RETURN..."
	done


ABOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpABOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpABOSS
	
	
	
	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_GEIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BossA, -1
