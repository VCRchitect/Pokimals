; DO A CTRL+F AND REPLACE ALL OF THE B8 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B8RUINS_MONSTER1B8
	const B8RUINS_MONSTER2B8
	const B8RUINS_MONSTER3B8
	const B8RUINS_MONSTER4B8
	const B8RUINS_MONSTER5B8
	const B8RUINS_POKE_BALL1B8
	const B8RUINS_POKE_BALL2B8


B8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB8
	appear B8RUINS_POKE_BALL1B8
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB8
	appear B8RUINS_POKE_BALL2B8
	endcallback


BallDisappearB8:
	disappear B8RUINS_POKE_BALL1B8
	disappear B8RUINS_POKE_BALL2B8
	endcallback


RandomStairWarpB8:
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
	
Monster1B8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB8
	ifequal 1, onebadgeB8
	ifequal 2, twobadgeB8
	ifequal 3, threebadgeB8
	ifequal 4, fourbadgeB8
	ifequal 5, fivebadgeB8
	ifequal 6, sixbadgeB8
	ifequal 7, sevenbadgeB8
	ifequal 8, eightbadgeB8
	end
	
Monster2B8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB8
	ifequal 1, onebadgeB8
	ifequal 2, twobadgeB8
	ifequal 3, threebadgeB8
	ifequal 4, fourbadgeB8
	ifequal 5, fivebadgeB8
	ifequal 6, sixbadgeB8
	ifequal 7, sevenbadgeB8
	ifequal 8, eightbadgeB8
	end

Monster3B8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB8
	ifequal 1, onebadgeB8
	ifequal 2, twobadgeB8
	ifequal 3, threebadgeB8
	ifequal 4, fourbadgeB8
	ifequal 5, fivebadgeB8
	ifequal 6, sixbadgeB8
	ifequal 7, sevenbadgeB8
	ifequal 8, eightbadgeB8
	end

Monster4B8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB8
	ifequal 1, onebadgeB8
	ifequal 2, twobadgeB8
	ifequal 3, threebadgeB8
	ifequal 4, fourbadgeB8
	ifequal 5, fivebadgeB8
	ifequal 6, sixbadgeB8
	ifequal 7, sevenbadgeB8
	ifequal 8, eightbadgeB8
	end

Monster5B8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB8
	ifequal 1, onebadgeB8
	ifequal 2, twobadgeB8
	ifequal 3, threebadgeB8
	ifequal 4, fourbadgeB8
	ifequal 5, fivebadgeB8
	ifequal 6, sixbadgeB8
	ifequal 7, sevenbadgeB8
	ifequal 8, eightbadgeB8
	end


nobadgeB8:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

onebadgeB8:
	RuinRandomB1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

twobadgeB8:
	RuinRandomB2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

threebadgeB8:
	RuinRandomB3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

fourbadgeB8:
	RuinRandomB4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

fivebadgeB8:
	RuinRandomB5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

sixbadgeB8:
	RuinRandomB6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

sevenbadgeB8:
	RuinRandomB7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end

eightbadgeB8:
	RuinRandomB8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB8
	end
	
B8Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B8RUINS_POKE_BALL1B8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B8RUINS_POKE_BALL1B8
	end	

	
B8Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B8RUINS_POKE_BALL2B8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B8RUINS_POKE_BALL2B8
	end	

UnlockDoorsB8:
	playsound SFX_2ND_PLACE 

	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B8RUINS_POKE_BALL1B8
	appear B8RUINS_POKE_BALL2B8	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


B8_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB8
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB8


	def_bg_events

	def_object_events
	object_event  6,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B8, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B8, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B8, -1
	object_event  6,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B8, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B8, -1
	object_event  1,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B8Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  8,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B8Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
