; DO A CTRL+F AND REPLACE ALL OF THE B6 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B6RUINS_MONSTER1B6
	const B6RUINS_MONSTER2B6
	const B6RUINS_MONSTER3B6
	const B6RUINS_MONSTER4B6
	const B6RUINS_MONSTER5B6
	const B6RUINS_POKE_BALL1B6
	const B6RUINS_POKE_BALL2B6


B6_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB6
	appear B6RUINS_POKE_BALL1B6
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB6
	appear B6RUINS_POKE_BALL2B6
	endcallback


BallDisappearB6:
	disappear B6RUINS_POKE_BALL1B6
	disappear B6RUINS_POKE_BALL2B6
	endcallback


RandomStairWarpB6:
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
	
Monster1B6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB6
	ifequal 1, onebadgeB6
	ifequal 2, twobadgeB6
	ifequal 3, threebadgeB6
	ifequal 4, fourbadgeB6
	ifequal 5, fivebadgeB6
	ifequal 6, sixbadgeB6
	ifequal 7, sevenbadgeB6
	ifequal 8, eightbadgeB6
	end
	
Monster2B6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB6
	ifequal 1, onebadgeB6
	ifequal 2, twobadgeB6
	ifequal 3, threebadgeB6
	ifequal 4, fourbadgeB6
	ifequal 5, fivebadgeB6
	ifequal 6, sixbadgeB6
	ifequal 7, sevenbadgeB6
	ifequal 8, eightbadgeB6
	end

Monster3B6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB6
	ifequal 1, onebadgeB6
	ifequal 2, twobadgeB6
	ifequal 3, threebadgeB6
	ifequal 4, fourbadgeB6
	ifequal 5, fivebadgeB6
	ifequal 6, sixbadgeB6
	ifequal 7, sevenbadgeB6
	ifequal 8, eightbadgeB6
	end

Monster4B6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB6
	ifequal 1, onebadgeB6
	ifequal 2, twobadgeB6
	ifequal 3, threebadgeB6
	ifequal 4, fourbadgeB6
	ifequal 5, fivebadgeB6
	ifequal 6, sixbadgeB6
	ifequal 7, sevenbadgeB6
	ifequal 8, eightbadgeB6
	end

Monster5B6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB6
	ifequal 1, onebadgeB6
	ifequal 2, twobadgeB6
	ifequal 3, threebadgeB6
	ifequal 4, fourbadgeB6
	ifequal 5, fivebadgeB6
	ifequal 6, sixbadgeB6
	ifequal 7, sevenbadgeB6
	ifequal 8, eightbadgeB6
	end


nobadgeB6:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

onebadgeB6:
	RuinRandomB1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

twobadgeB6:
	RuinRandomB2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

threebadgeB6:
	RuinRandomB3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

fourbadgeB6:
	RuinRandomB4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

fivebadgeB6:
	RuinRandomB5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

sixbadgeB6:
	RuinRandomB6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

sevenbadgeB6:
	RuinRandomB7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end

eightbadgeB6:
	RuinRandomB8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB6
	end
	
B6Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B6RUINS_POKE_BALL1B6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B6RUINS_POKE_BALL1B6
	end	

	
B6Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B6RUINS_POKE_BALL2B6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B6RUINS_POKE_BALL2B6
	end	

UnlockDoorsB6:
	playsound SFX_2ND_PLACE 

	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B6RUINS_POKE_BALL1B6
	appear B6RUINS_POKE_BALL2B6	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B6_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB6
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB6


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B6, -1
	object_event  7,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B6, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B6, -1
	object_event  5,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B6, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B6, -1
	object_event  3,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B6Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B6Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
