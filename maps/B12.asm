; DO A CTRL+F AND REPLACE ALL OF THE B12 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B12RUINS_MONSTER1B12
	const B12RUINS_MONSTER2B12
	const B12RUINS_MONSTER3B12
	const B12RUINS_MONSTER4B12
	const B12RUINS_MONSTER5B12
	const B12RUINS_POKE_BALL1B12
	const B12RUINS_POKE_BALL2B12


B12_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB12
	appear B12RUINS_POKE_BALL1B12
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB12
	appear B12RUINS_POKE_BALL2B12
	endcallback


BallDisappearB12:
	disappear B12RUINS_POKE_BALL1B12
	disappear B12RUINS_POKE_BALL2B12
	endcallback


RandomStairWarpB12:
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
	
Monster1B12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB12
	ifequal 1, onebadgeB12
	ifequal 2, twobadgeB12
	ifequal 3, threebadgeB12
	ifequal 4, fourbadgeB12
	ifequal 5, fivebadgeB12
	ifequal 6, sixbadgeB12
	ifequal 7, sevenbadgeB12
	ifequal 8, eightbadgeB12
	end
	
Monster2B12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB12
	ifequal 1, onebadgeB12
	ifequal 2, twobadgeB12
	ifequal 3, threebadgeB12
	ifequal 4, fourbadgeB12
	ifequal 5, fivebadgeB12
	ifequal 6, sixbadgeB12
	ifequal 7, sevenbadgeB12
	ifequal 8, eightbadgeB12
	end

Monster3B12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB12
	ifequal 1, onebadgeB12
	ifequal 2, twobadgeB12
	ifequal 3, threebadgeB12
	ifequal 4, fourbadgeB12
	ifequal 5, fivebadgeB12
	ifequal 6, sixbadgeB12
	ifequal 7, sevenbadgeB12
	ifequal 8, eightbadgeB12
	end

Monster4B12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB12
	ifequal 1, onebadgeB12
	ifequal 2, twobadgeB12
	ifequal 3, threebadgeB12
	ifequal 4, fourbadgeB12
	ifequal 5, fivebadgeB12
	ifequal 6, sixbadgeB12
	ifequal 7, sevenbadgeB12
	ifequal 8, eightbadgeB12
	end

Monster5B12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB12
	ifequal 1, onebadgeB12
	ifequal 2, twobadgeB12
	ifequal 3, threebadgeB12
	ifequal 4, fourbadgeB12
	ifequal 5, fivebadgeB12
	ifequal 6, sixbadgeB12
	ifequal 7, sevenbadgeB12
	ifequal 8, eightbadgeB12
	end


nobadgeB12:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

onebadgeB12:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

twobadgeB12:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

threebadgeB12:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

fourbadgeB12:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

fivebadgeB12:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

sixbadgeB12:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

sevenbadgeB12:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end

eightbadgeB12:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB12
	end
	
B12Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B12RUINS_POKE_BALL1B12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B12RUINS_POKE_BALL1B12
	end	

	
B12Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B12RUINS_POKE_BALL2B12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B12RUINS_POKE_BALL2B12
	end	

UnlockDoorsB12:
	playsound SFX_2ND_PLACE 

	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B12RUINS_POKE_BALL1B12
	appear B12RUINS_POKE_BALL2B12	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B12_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB12
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB12


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B12, -1
	object_event  8,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B12, -1
	object_event  3,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B12, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B12, -1
	object_event  6,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B12, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B12Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B12Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
