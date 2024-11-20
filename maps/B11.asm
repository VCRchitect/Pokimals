; DO A CTRL+F AND REPLACE ALL OF THE B11 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B11RUINS_MONSTER1B11
	const B11RUINS_MONSTER2B11
	const B11RUINS_MONSTER3B11
	const B11RUINS_MONSTER4B11
	const B11RUINS_MONSTER5B11
	const B11RUINS_POKE_BALL1B11
	const B11RUINS_POKE_BALL2B11


B11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB11
	appear B11RUINS_POKE_BALL1B11
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB11
	appear B11RUINS_POKE_BALL2B11
	endcallback


BallDisappearB11:
	disappear B11RUINS_POKE_BALL1B11
	disappear B11RUINS_POKE_BALL2B11
	endcallback


RandomStairWarpB11:
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
	
Monster1B11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB11
	ifequal 1, onebadgeB11
	ifequal 2, twobadgeB11
	ifequal 3, threebadgeB11
	ifequal 4, fourbadgeB11
	ifequal 5, fivebadgeB11
	ifequal 6, sixbadgeB11
	ifequal 7, sevenbadgeB11
	ifequal 8, eightbadgeB11
	end
	
Monster2B11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB11
	ifequal 1, onebadgeB11
	ifequal 2, twobadgeB11
	ifequal 3, threebadgeB11
	ifequal 4, fourbadgeB11
	ifequal 5, fivebadgeB11
	ifequal 6, sixbadgeB11
	ifequal 7, sevenbadgeB11
	ifequal 8, eightbadgeB11
	end

Monster3B11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB11
	ifequal 1, onebadgeB11
	ifequal 2, twobadgeB11
	ifequal 3, threebadgeB11
	ifequal 4, fourbadgeB11
	ifequal 5, fivebadgeB11
	ifequal 6, sixbadgeB11
	ifequal 7, sevenbadgeB11
	ifequal 8, eightbadgeB11
	end

Monster4B11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB11
	ifequal 1, onebadgeB11
	ifequal 2, twobadgeB11
	ifequal 3, threebadgeB11
	ifequal 4, fourbadgeB11
	ifequal 5, fivebadgeB11
	ifequal 6, sixbadgeB11
	ifequal 7, sevenbadgeB11
	ifequal 8, eightbadgeB11
	end

Monster5B11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB11
	ifequal 1, onebadgeB11
	ifequal 2, twobadgeB11
	ifequal 3, threebadgeB11
	ifequal 4, fourbadgeB11
	ifequal 5, fivebadgeB11
	ifequal 6, sixbadgeB11
	ifequal 7, sevenbadgeB11
	ifequal 8, eightbadgeB11
	end


nobadgeB11:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

onebadgeB11:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

twobadgeB11:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

threebadgeB11:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

fourbadgeB11:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

fivebadgeB11:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

sixbadgeB11:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

sevenbadgeB11:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end

eightbadgeB11:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB11
	end
	
B11Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B11RUINS_POKE_BALL1B11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B11RUINS_POKE_BALL1B11
	end	

	
B11Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B11RUINS_POKE_BALL2B11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B11RUINS_POKE_BALL2B11
	end	

UnlockDoorsB11:
	playsound SFX_2ND_PLACE 

	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B11RUINS_POKE_BALL1B11
	appear B11RUINS_POKE_BALL2B11	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B11_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB11
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB11


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B11, -1
	object_event  5,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B11, -1
	object_event  8,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B11, -1
	object_event  1,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B11, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B11, -1
	object_event  1,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B11Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  8,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B11Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
