; DO A CTRL+F AND REPLACE ALL OF THE B9 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B9RUINS_MONSTER1B9
	const B9RUINS_MONSTER2B9
	const B9RUINS_MONSTER3B9
	const B9RUINS_MONSTER4B9
	const B9RUINS_MONSTER5B9
	const B9RUINS_POKE_BALL1B9
	const B9RUINS_POKE_BALL2B9


B9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB9
	appear B9RUINS_POKE_BALL1B9
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB9
	appear B9RUINS_POKE_BALL2B9
	endcallback


BallDisappearB9:
	disappear B9RUINS_POKE_BALL1B9
	disappear B9RUINS_POKE_BALL2B9
	endcallback


RandomStairWarpB9:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperB
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp B10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp BPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1B9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB9
	ifequal 1, onebadgeB9
	ifequal 2, twobadgeB9
	ifequal 3, threebadgeB9
	ifequal 4, fourbadgeB9
	ifequal 5, fivebadgeB9
	ifequal 6, sixbadgeB9
	ifequal 7, sevenbadgeB9
	ifequal 8, eightbadgeB9
	end
	
Monster2B9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB9
	ifequal 1, onebadgeB9
	ifequal 2, twobadgeB9
	ifequal 3, threebadgeB9
	ifequal 4, fourbadgeB9
	ifequal 5, fivebadgeB9
	ifequal 6, sixbadgeB9
	ifequal 7, sevenbadgeB9
	ifequal 8, eightbadgeB9
	end

Monster3B9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB9
	ifequal 1, onebadgeB9
	ifequal 2, twobadgeB9
	ifequal 3, threebadgeB9
	ifequal 4, fourbadgeB9
	ifequal 5, fivebadgeB9
	ifequal 6, sixbadgeB9
	ifequal 7, sevenbadgeB9
	ifequal 8, eightbadgeB9
	end

Monster4B9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB9
	ifequal 1, onebadgeB9
	ifequal 2, twobadgeB9
	ifequal 3, threebadgeB9
	ifequal 4, fourbadgeB9
	ifequal 5, fivebadgeB9
	ifequal 6, sixbadgeB9
	ifequal 7, sevenbadgeB9
	ifequal 8, eightbadgeB9
	end

Monster5B9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB9
	ifequal 1, onebadgeB9
	ifequal 2, twobadgeB9
	ifequal 3, threebadgeB9
	ifequal 4, fourbadgeB9
	ifequal 5, fivebadgeB9
	ifequal 6, sixbadgeB9
	ifequal 7, sevenbadgeB9
	ifequal 8, eightbadgeB9
	end


nobadgeB9:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

onebadgeB9:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

twobadgeB9:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

threebadgeB9:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

fourbadgeB9:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

fivebadgeB9:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

sixbadgeB9:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

sevenbadgeB9:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end

eightbadgeB9:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB9
	end
	
B9Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B9RUINS_POKE_BALL1B9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B9RUINS_POKE_BALL1B9
	end	

	
B9Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B9RUINS_POKE_BALL2B9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B9RUINS_POKE_BALL2B9
	end	

UnlockDoorsB9:
	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B9RUINS_POKE_BALL1B9
	appear B9RUINS_POKE_BALL2B9	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B9_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB9
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB9


	def_bg_events

	def_object_events
	object_event  5,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B9, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B9, -1
	object_event  7,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B9, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B9, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B9, -1
	object_event  1,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B9Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  8,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B9Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
