; DO A CTRL+F AND REPLACE ALL OF THE B3 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B3RUINS_MONSTER1B3
	const B3RUINS_MONSTER2B3
	const B3RUINS_MONSTER3B3
	const B3RUINS_MONSTER4B3
	const B3RUINS_MONSTER5B3
	const B3RUINS_POKE_BALL1B3
	const B3RUINS_POKE_BALL2B3


B3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB3
	appear B3RUINS_POKE_BALL1B3
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB3
	appear B3RUINS_POKE_BALL2B3
	endcallback


BallDisappearB3:
	disappear B3RUINS_POKE_BALL1B3
	disappear B3RUINS_POKE_BALL2B3
	endcallback


RandomStairWarpB3:
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
	
Monster1B3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB3
	ifequal 1, onebadgeB3
	ifequal 2, twobadgeB3
	ifequal 3, threebadgeB3
	ifequal 4, fourbadgeB3
	ifequal 5, fivebadgeB3
	ifequal 6, sixbadgeB3
	ifequal 7, sevenbadgeB3
	ifequal 8, eightbadgeB3
	end
	
Monster2B3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB3
	ifequal 1, onebadgeB3
	ifequal 2, twobadgeB3
	ifequal 3, threebadgeB3
	ifequal 4, fourbadgeB3
	ifequal 5, fivebadgeB3
	ifequal 6, sixbadgeB3
	ifequal 7, sevenbadgeB3
	ifequal 8, eightbadgeB3
	end

Monster3B3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB3
	ifequal 1, onebadgeB3
	ifequal 2, twobadgeB3
	ifequal 3, threebadgeB3
	ifequal 4, fourbadgeB3
	ifequal 5, fivebadgeB3
	ifequal 6, sixbadgeB3
	ifequal 7, sevenbadgeB3
	ifequal 8, eightbadgeB3
	end

Monster4B3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB3
	ifequal 1, onebadgeB3
	ifequal 2, twobadgeB3
	ifequal 3, threebadgeB3
	ifequal 4, fourbadgeB3
	ifequal 5, fivebadgeB3
	ifequal 6, sixbadgeB3
	ifequal 7, sevenbadgeB3
	ifequal 8, eightbadgeB3
	end

Monster5B3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB3
	ifequal 1, onebadgeB3
	ifequal 2, twobadgeB3
	ifequal 3, threebadgeB3
	ifequal 4, fourbadgeB3
	ifequal 5, fivebadgeB3
	ifequal 6, sixbadgeB3
	ifequal 7, sevenbadgeB3
	ifequal 8, eightbadgeB3
	end


nobadgeB3:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

onebadgeB3:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

twobadgeB3:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

threebadgeB3:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

fourbadgeB3:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

fivebadgeB3:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

sixbadgeB3:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

sevenbadgeB3:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end

eightbadgeB3:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB3
	end
	
B3Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B3RUINS_POKE_BALL1B3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B3RUINS_POKE_BALL1B3
	end	

	
B3Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B3RUINS_POKE_BALL2B3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B3RUINS_POKE_BALL2B3
	end	

UnlockDoorsB3:
	playsound SFX_2ND_PLACE 

	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B3RUINS_POKE_BALL1B3
	appear B3RUINS_POKE_BALL2B3	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 6, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B3_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB2
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB2


	def_bg_events

	def_object_events
	object_event  2,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B3, -1
	object_event  7,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B3, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B3, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B3, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B3, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B3Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B3Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
