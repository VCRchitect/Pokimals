; DO A CTRL+F AND REPLACE ALL OF THE B5 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B5RUINS_MONSTER1B5
	const B5RUINS_MONSTER2B5
	const B5RUINS_MONSTER3B5
	const B5RUINS_MONSTER4B5
	const B5RUINS_MONSTER5B5
	const B5RUINS_POKE_BALL1B5
	const B5RUINS_POKE_BALL2B5


B5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB5
	appear B5RUINS_POKE_BALL1B5
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB5
	appear B5RUINS_POKE_BALL2B5
	endcallback


BallDisappearB5:
	disappear B5RUINS_POKE_BALL1B5
	disappear B5RUINS_POKE_BALL2B5
	endcallback


RandomStairWarpB5:
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
	
Monster1B5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB5
	ifequal 1, onebadgeB5
	ifequal 2, twobadgeB5
	ifequal 3, threebadgeB5
	ifequal 4, fourbadgeB5
	ifequal 5, fivebadgeB5
	ifequal 6, sixbadgeB5
	ifequal 7, sevenbadgeB5
	ifequal 8, eightbadgeB5
	end
	
Monster2B5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB5
	ifequal 1, onebadgeB5
	ifequal 2, twobadgeB5
	ifequal 3, threebadgeB5
	ifequal 4, fourbadgeB5
	ifequal 5, fivebadgeB5
	ifequal 6, sixbadgeB5
	ifequal 7, sevenbadgeB5
	ifequal 8, eightbadgeB5
	end

Monster3B5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB5
	ifequal 1, onebadgeB5
	ifequal 2, twobadgeB5
	ifequal 3, threebadgeB5
	ifequal 4, fourbadgeB5
	ifequal 5, fivebadgeB5
	ifequal 6, sixbadgeB5
	ifequal 7, sevenbadgeB5
	ifequal 8, eightbadgeB5
	end

Monster4B5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB5
	ifequal 1, onebadgeB5
	ifequal 2, twobadgeB5
	ifequal 3, threebadgeB5
	ifequal 4, fourbadgeB5
	ifequal 5, fivebadgeB5
	ifequal 6, sixbadgeB5
	ifequal 7, sevenbadgeB5
	ifequal 8, eightbadgeB5
	end

Monster5B5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB5
	ifequal 1, onebadgeB5
	ifequal 2, twobadgeB5
	ifequal 3, threebadgeB5
	ifequal 4, fourbadgeB5
	ifequal 5, fivebadgeB5
	ifequal 6, sixbadgeB5
	ifequal 7, sevenbadgeB5
	ifequal 8, eightbadgeB5
	end


nobadgeB5:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

onebadgeB5:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

twobadgeB5:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

threebadgeB5:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

fourbadgeB5:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

fivebadgeB5:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

sixbadgeB5:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

sevenbadgeB5:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end

eightbadgeB5:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB5
	end
	
B5Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B5RUINS_POKE_BALL1B5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B5RUINS_POKE_BALL1B5
	end	

	
B5Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B5RUINS_POKE_BALL2B5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B5RUINS_POKE_BALL2B5
	end	

UnlockDoorsB5:
	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B5RUINS_POKE_BALL1B5
	appear B5RUINS_POKE_BALL2B5	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B5_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB5
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB5


	def_bg_events

	def_object_events
	object_event  6,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B5, -1
	object_event  4,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B5, -1
	object_event  5,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B5, -1
	object_event  8,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B5, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B5, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B5Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B5Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
