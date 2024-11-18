; DO A CTRL+F AND REPLACE ALL OF THE B4 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B4RUINS_MONSTER1B4
	const B4RUINS_MONSTER2B4
	const B4RUINS_MONSTER3B4
	const B4RUINS_MONSTER4B4
	const B4RUINS_MONSTER5B4
	const B4RUINS_POKE_BALL1B4
	const B4RUINS_POKE_BALL2B4


B4_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB4
	appear B4RUINS_POKE_BALL1B4
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB4
	appear B4RUINS_POKE_BALL2B4
	endcallback


BallDisappearB4:
	disappear B4RUINS_POKE_BALL1B4
	disappear B4RUINS_POKE_BALL2B4
	endcallback


RandomStairWarpB4:
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
	
Monster1B4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB4
	ifequal 1, onebadgeB4
	ifequal 2, twobadgeB4
	ifequal 3, threebadgeB4
	ifequal 4, fourbadgeB4
	ifequal 5, fivebadgeB4
	ifequal 6, sixbadgeB4
	ifequal 7, sevenbadgeB4
	ifequal 8, eightbadgeB4
	end
	
Monster2B4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB4
	ifequal 1, onebadgeB4
	ifequal 2, twobadgeB4
	ifequal 3, threebadgeB4
	ifequal 4, fourbadgeB4
	ifequal 5, fivebadgeB4
	ifequal 6, sixbadgeB4
	ifequal 7, sevenbadgeB4
	ifequal 8, eightbadgeB4
	end

Monster3B4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB4
	ifequal 1, onebadgeB4
	ifequal 2, twobadgeB4
	ifequal 3, threebadgeB4
	ifequal 4, fourbadgeB4
	ifequal 5, fivebadgeB4
	ifequal 6, sixbadgeB4
	ifequal 7, sevenbadgeB4
	ifequal 8, eightbadgeB4
	end

Monster4B4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB4
	ifequal 1, onebadgeB4
	ifequal 2, twobadgeB4
	ifequal 3, threebadgeB4
	ifequal 4, fourbadgeB4
	ifequal 5, fivebadgeB4
	ifequal 6, sixbadgeB4
	ifequal 7, sevenbadgeB4
	ifequal 8, eightbadgeB4
	end

Monster5B4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB4
	ifequal 1, onebadgeB4
	ifequal 2, twobadgeB4
	ifequal 3, threebadgeB4
	ifequal 4, fourbadgeB4
	ifequal 5, fivebadgeB4
	ifequal 6, sixbadgeB4
	ifequal 7, sevenbadgeB4
	ifequal 8, eightbadgeB4
	end


nobadgeB4:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

onebadgeB4:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

twobadgeB4:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

threebadgeB4:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

fourbadgeB4:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

fivebadgeB4:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

sixbadgeB4:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

sevenbadgeB4:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end

eightbadgeB4:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB4
	end
	
B4Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B4RUINS_POKE_BALL1B4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B4RUINS_POKE_BALL1B4
	end	

	
B4Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B4RUINS_POKE_BALL2B4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B4RUINS_POKE_BALL2B4
	end	

UnlockDoorsB4:
	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B4RUINS_POKE_BALL1B4
	appear B4RUINS_POKE_BALL2B4	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpB4
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpB4


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B4, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B4, -1
	object_event  8,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B4, -1
	object_event  1,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B4, -1
	object_event  7,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B4, -1
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B4Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B4Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
