; DO A CTRL+F AND REPLACE ALL OF THE B13 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B13RUINS_MONSTER1B13
	const B13RUINS_MONSTER2B13
	const B13RUINS_MONSTER3B13
	const B13RUINS_MONSTER4B13
	const B13RUINS_MONSTER5B13
	const B13RUINS_POKE_BALL1B13
	const B13RUINS_POKE_BALL2B13


B13_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB13
	appear B13RUINS_POKE_BALL1B13
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB13
	appear B13RUINS_POKE_BALL2B13
	endcallback


BallDisappearB13:
	disappear B13RUINS_POKE_BALL1B13
	disappear B13RUINS_POKE_BALL2B13
	endcallback


RandomStairWarpB13:
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
	
Monster1B13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB13
	ifequal 1, onebadgeB13
	ifequal 2, twobadgeB13
	ifequal 3, threebadgeB13
	ifequal 4, fourbadgeB13
	ifequal 5, fivebadgeB13
	ifequal 6, sixbadgeB13
	ifequal 7, sevenbadgeB13
	ifequal 8, eightbadgeB13
	end
	
Monster2B13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB13
	ifequal 1, onebadgeB13
	ifequal 2, twobadgeB13
	ifequal 3, threebadgeB13
	ifequal 4, fourbadgeB13
	ifequal 5, fivebadgeB13
	ifequal 6, sixbadgeB13
	ifequal 7, sevenbadgeB13
	ifequal 8, eightbadgeB13
	end

Monster3B13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB13
	ifequal 1, onebadgeB13
	ifequal 2, twobadgeB13
	ifequal 3, threebadgeB13
	ifequal 4, fourbadgeB13
	ifequal 5, fivebadgeB13
	ifequal 6, sixbadgeB13
	ifequal 7, sevenbadgeB13
	ifequal 8, eightbadgeB13
	end

Monster4B13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB13
	ifequal 1, onebadgeB13
	ifequal 2, twobadgeB13
	ifequal 3, threebadgeB13
	ifequal 4, fourbadgeB13
	ifequal 5, fivebadgeB13
	ifequal 6, sixbadgeB13
	ifequal 7, sevenbadgeB13
	ifequal 8, eightbadgeB13
	end

Monster5B13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB13
	ifequal 1, onebadgeB13
	ifequal 2, twobadgeB13
	ifequal 3, threebadgeB13
	ifequal 4, fourbadgeB13
	ifequal 5, fivebadgeB13
	ifequal 6, sixbadgeB13
	ifequal 7, sevenbadgeB13
	ifequal 8, eightbadgeB13
	end


nobadgeB13:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

onebadgeB13:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

twobadgeB13:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

threebadgeB13:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

fourbadgeB13:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

fivebadgeB13:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

sixbadgeB13:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

sevenbadgeB13:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end

eightbadgeB13:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB13
	end
	
B13Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B13RUINS_POKE_BALL1B13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B13RUINS_POKE_BALL1B13
	end	

	
B13Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B13RUINS_POKE_BALL2B13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B13RUINS_POKE_BALL2B13
	end	

UnlockDoorsB13:
	playsound SFX_2ND_PLACE 

	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B13RUINS_POKE_BALL1B13
	appear B13RUINS_POKE_BALL2B13	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B13_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB13
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB13


	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B13, -1
	object_event  9,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B13, -1
	object_event  5,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B13, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B13, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B13, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B13Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B13Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
