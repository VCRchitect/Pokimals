; DO A CTRL+F AND REPLACE ALL OF THE B10 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B10RUINS_MONSTER1B10
	const B10RUINS_MONSTER2B10
	const B10RUINS_MONSTER3B10
	const B10RUINS_MONSTER4B10
	const B10RUINS_MONSTER5B10
	const B10RUINS_POKE_BALL1B10
	const B10RUINS_POKE_BALL2B10


B10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB10
	appear B10RUINS_POKE_BALL1B10
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB10
	appear B10RUINS_POKE_BALL2B10
	endcallback


BallDisappearB10:
	disappear B10RUINS_POKE_BALL1B10
	disappear B10RUINS_POKE_BALL2B10
	endcallback


RandomStairWarpB10a:
	warp BHEAL, 4,  4
	end

RandomStairWarpB10b:
	warp BMART, 4,  4
	end
	
Monster1B10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB10
	ifequal 1, onebadgeB10
	ifequal 2, twobadgeB10
	ifequal 3, threebadgeB10
	ifequal 4, fourbadgeB10
	ifequal 5, fivebadgeB10
	ifequal 6, sixbadgeB10
	ifequal 7, sevenbadgeB10
	ifequal 8, eightbadgeB10
	end
	
Monster2B10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB10
	ifequal 1, onebadgeB10
	ifequal 2, twobadgeB10
	ifequal 3, threebadgeB10
	ifequal 4, fourbadgeB10
	ifequal 5, fivebadgeB10
	ifequal 6, sixbadgeB10
	ifequal 7, sevenbadgeB10
	ifequal 8, eightbadgeB10
	end

Monster3B10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB10
	ifequal 1, onebadgeB10
	ifequal 2, twobadgeB10
	ifequal 3, threebadgeB10
	ifequal 4, fourbadgeB10
	ifequal 5, fivebadgeB10
	ifequal 6, sixbadgeB10
	ifequal 7, sevenbadgeB10
	ifequal 8, eightbadgeB10
	end

Monster4B10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB10
	ifequal 1, onebadgeB10
	ifequal 2, twobadgeB10
	ifequal 3, threebadgeB10
	ifequal 4, fourbadgeB10
	ifequal 5, fivebadgeB10
	ifequal 6, sixbadgeB10
	ifequal 7, sevenbadgeB10
	ifequal 8, eightbadgeB10
	end

Monster5B10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB10
	ifequal 1, onebadgeB10
	ifequal 2, twobadgeB10
	ifequal 3, threebadgeB10
	ifequal 4, fourbadgeB10
	ifequal 5, fivebadgeB10
	ifequal 6, sixbadgeB10
	ifequal 7, sevenbadgeB10
	ifequal 8, eightbadgeB10
	end


nobadgeB10:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

onebadgeB10:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

twobadgeB10:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

threebadgeB10:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

fourbadgeB10:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

fivebadgeB10:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

sixbadgeB10:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

sevenbadgeB10:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end

eightbadgeB10:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB10
	end
	
B10Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B10RUINS_POKE_BALL1B10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B10RUINS_POKE_BALL1B10
	end	

	
B10Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B10RUINS_POKE_BALL2B10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B10RUINS_POKE_BALL2B10
	end	

UnlockDoorsB10:
	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B10RUINS_POKE_BALL1B10
	appear B10RUINS_POKE_BALL2B10	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 10, 0, $0B
	reloadmappart
	closetext	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B10_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB10a
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB10a
	coord_event  10,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB10b
	coord_event  11,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB10b


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B10, -1
	object_event  5,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B10, -1
	object_event  6,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B10, -1
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B10, -1
	object_event 11,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B10, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B10Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B10Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
