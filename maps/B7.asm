; DO A CTRL+F AND REPLACE ALL OF THE B7 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B7RUINS_MONSTER1B7
	const B7RUINS_MONSTER2B7
	const B7RUINS_MONSTER3B7
	const B7RUINS_MONSTER4B7
	const B7RUINS_MONSTER5B7
	const B7RUINS_POKE_BALL1B7
	const B7RUINS_POKE_BALL2B7


B7_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB7
	appear B7RUINS_POKE_BALL1B7
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB7
	appear B7RUINS_POKE_BALL2B7
	endcallback


BallDisappearB7:
	disappear B7RUINS_POKE_BALL1B7
	disappear B7RUINS_POKE_BALL2B7
	endcallback


RandomStairWarpB7:
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
	
Monster1B7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB7
	ifequal 1, onebadgeB7
	ifequal 2, twobadgeB7
	ifequal 3, threebadgeB7
	ifequal 4, fourbadgeB7
	ifequal 5, fivebadgeB7
	ifequal 6, sixbadgeB7
	ifequal 7, sevenbadgeB7
	ifequal 8, eightbadgeB7
	end
	
Monster2B7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB7
	ifequal 1, onebadgeB7
	ifequal 2, twobadgeB7
	ifequal 3, threebadgeB7
	ifequal 4, fourbadgeB7
	ifequal 5, fivebadgeB7
	ifequal 6, sixbadgeB7
	ifequal 7, sevenbadgeB7
	ifequal 8, eightbadgeB7
	end

Monster3B7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB7
	ifequal 1, onebadgeB7
	ifequal 2, twobadgeB7
	ifequal 3, threebadgeB7
	ifequal 4, fourbadgeB7
	ifequal 5, fivebadgeB7
	ifequal 6, sixbadgeB7
	ifequal 7, sevenbadgeB7
	ifequal 8, eightbadgeB7
	end

Monster4B7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB7
	ifequal 1, onebadgeB7
	ifequal 2, twobadgeB7
	ifequal 3, threebadgeB7
	ifequal 4, fourbadgeB7
	ifequal 5, fivebadgeB7
	ifequal 6, sixbadgeB7
	ifequal 7, sevenbadgeB7
	ifequal 8, eightbadgeB7
	end

Monster5B7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB7
	ifequal 1, onebadgeB7
	ifequal 2, twobadgeB7
	ifequal 3, threebadgeB7
	ifequal 4, fourbadgeB7
	ifequal 5, fivebadgeB7
	ifequal 6, sixbadgeB7
	ifequal 7, sevenbadgeB7
	ifequal 8, eightbadgeB7
	end


nobadgeB7:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

onebadgeB7:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

twobadgeB7:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

threebadgeB7:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

fourbadgeB7:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

fivebadgeB7:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

sixbadgeB7:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

sevenbadgeB7:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end

eightbadgeB7:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB7
	end
	
B7Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B7RUINS_POKE_BALL1B7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B7RUINS_POKE_BALL1B7
	end	

	
B7Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B7RUINS_POKE_BALL2B7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B7RUINS_POKE_BALL2B7
	end	

UnlockDoorsB7:
	playsound SFX_2ND_PLACE 

	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B7RUINS_POKE_BALL1B7
	appear B7RUINS_POKE_BALL2B7	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B7_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpB7
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpB7


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B7, -1
	object_event  8,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B7, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B7, -1
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B7, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B7, -1
	object_event  4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B7Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B7Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
