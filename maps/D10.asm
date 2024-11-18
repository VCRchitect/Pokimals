; DO A CTRL+F AND REPLACE ALL OF THE D10 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D10RUINS_MONSTER1D10
	const D10RUINS_MONSTER2D10
	const D10RUINS_MONSTER3D10
	const D10RUINS_MONSTER4D10
	const D10RUINS_MONSTER5D10
	const D10RUINS_POKE_BALL1D10
	const D10RUINS_POKE_BALL2D10


D10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD10
	appear D10RUINS_POKE_BALL1D10
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD10
	appear D10RUINS_POKE_BALL2D10
	endcallback


BallDisappearD10:
	disappear D10RUINS_POKE_BALL1D10
	disappear D10RUINS_POKE_BALL2D10
	endcallback


RandomStairWarpD10a:
	warp DHEAL, 4,  4
	end

RandomStairWarpD10b:
	warp DMART, 4,  4
	end
		
Monster1D10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD10
	ifequal 1, onebadgeD10
	ifequal 2, twobadgeD10
	ifequal 3, threebadgeD10
	ifequal 4, fourbadgeD10
	ifequal 5, fivebadgeD10
	ifequal 6, sixbadgeD10
	ifequal 7, sevenbadgeD10
	ifequal 8, eightbadgeD10
	end
	
Monster2D10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD10
	ifequal 1, onebadgeD10
	ifequal 2, twobadgeD10
	ifequal 3, threebadgeD10
	ifequal 4, fourbadgeD10
	ifequal 5, fivebadgeD10
	ifequal 6, sixbadgeD10
	ifequal 7, sevenbadgeD10
	ifequal 8, eightbadgeD10
	end

Monster3D10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD10
	ifequal 1, onebadgeD10
	ifequal 2, twobadgeD10
	ifequal 3, threebadgeD10
	ifequal 4, fourbadgeD10
	ifequal 5, fivebadgeD10
	ifequal 6, sixbadgeD10
	ifequal 7, sevenbadgeD10
	ifequal 8, eightbadgeD10
	end

Monster4D10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD10
	ifequal 1, onebadgeD10
	ifequal 2, twobadgeD10
	ifequal 3, threebadgeD10
	ifequal 4, fourbadgeD10
	ifequal 5, fivebadgeD10
	ifequal 6, sixbadgeD10
	ifequal 7, sevenbadgeD10
	ifequal 8, eightbadgeD10
	end

Monster5D10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD10
	ifequal 1, onebadgeD10
	ifequal 2, twobadgeD10
	ifequal 3, threebadgeD10
	ifequal 4, fourbadgeD10
	ifequal 5, fivebadgeD10
	ifequal 6, sixbadgeD10
	ifequal 7, sevenbadgeD10
	ifequal 8, eightbadgeD10
	end


nobadgeD10:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

onebadgeD10:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

twobadgeD10:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

threebadgeD10:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

fourbadgeD10:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

fivebadgeD10:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

sixbadgeD10:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

sevenbadgeD10:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end

eightbadgeD10:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD10
	end
	
D10Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D10RUINS_POKE_BALL1D10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D10RUINS_POKE_BALL1D10
	end	

	
D10Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D10RUINS_POKE_BALL2D10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D10RUINS_POKE_BALL2D10
	end	

UnlockDoorsD10:
	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D10RUINS_POKE_BALL1D10
	appear D10RUINS_POKE_BALL2D10	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 10, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D10_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD10a
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD10a
	coord_event  10,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD10b
	coord_event  11,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD10b



	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D10, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D10, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D10, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D10, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D10, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D10Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D10Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
