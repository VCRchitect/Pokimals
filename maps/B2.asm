; DO A CTRL+F AND REPLACE ALL OF THE B2 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B2RUINS_MONSTER1B2
	const B2RUINS_MONSTER2B2
	const B2RUINS_MONSTER3B2
	const B2RUINS_MONSTER4B2
	const B2RUINS_MONSTER5B2
	const B2RUINS_POKE_BALL1B2
	const B2RUINS_POKE_BALL2B2


B2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB2
	appear B2RUINS_POKE_BALL1B2
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB2
	appear B2RUINS_POKE_BALL2B2
	endcallback


BallDisappearB2:
	disappear B2RUINS_POKE_BALL1B2
	disappear B2RUINS_POKE_BALL2B2
	endcallback


RandomStairWarpB2:
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
	
Monster1B2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB2
	ifequal 1, onebadgeB2
	ifequal 2, twobadgeB2
	ifequal 3, threebadgeB2
	ifequal 4, fourbadgeB2
	ifequal 5, fivebadgeB2
	ifequal 6, sixbadgeB2
	ifequal 7, sevenbadgeB2
	ifequal 8, eightbadgeB2
	end
	
Monster2B2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB2
	ifequal 1, onebadgeB2
	ifequal 2, twobadgeB2
	ifequal 3, threebadgeB2
	ifequal 4, fourbadgeB2
	ifequal 5, fivebadgeB2
	ifequal 6, sixbadgeB2
	ifequal 7, sevenbadgeB2
	ifequal 8, eightbadgeB2
	end

Monster3B2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB2
	ifequal 1, onebadgeB2
	ifequal 2, twobadgeB2
	ifequal 3, threebadgeB2
	ifequal 4, fourbadgeB2
	ifequal 5, fivebadgeB2
	ifequal 6, sixbadgeB2
	ifequal 7, sevenbadgeB2
	ifequal 8, eightbadgeB2
	end

Monster4B2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB2
	ifequal 1, onebadgeB2
	ifequal 2, twobadgeB2
	ifequal 3, threebadgeB2
	ifequal 4, fourbadgeB2
	ifequal 5, fivebadgeB2
	ifequal 6, sixbadgeB2
	ifequal 7, sevenbadgeB2
	ifequal 8, eightbadgeB2
	end

Monster5B2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB2
	ifequal 1, onebadgeB2
	ifequal 2, twobadgeB2
	ifequal 3, threebadgeB2
	ifequal 4, fourbadgeB2
	ifequal 5, fivebadgeB2
	ifequal 6, sixbadgeB2
	ifequal 7, sevenbadgeB2
	ifequal 8, eightbadgeB2
	end


nobadgeB2:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

onebadgeB2:
	RuinRandomB1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

twobadgeB2:
	RuinRandomB2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

threebadgeB2:
	RuinRandomB3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

fourbadgeB2:
	RuinRandomB4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

fivebadgeB2:
	RuinRandomB5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

sixbadgeB2:
	RuinRandomB6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

sevenbadgeB2:
	RuinRandomB7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end

eightbadgeB2:
	RuinRandomB8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB2
	end
	
B2Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B2RUINS_POKE_BALL1B2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B2RUINS_POKE_BALL1B2
	end	

	
B2Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B2RUINS_POKE_BALL2B2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B2RUINS_POKE_BALL2B2
	end	

UnlockDoorsB2:
	playsound SFX_2ND_PLACE 
	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B2RUINS_POKE_BALL1B2
	appear B2RUINS_POKE_BALL2B2	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end
	
BButtonText:
	text "Room Clear!"
	done	

B2_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB2
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB2


	def_bg_events

	def_object_events
	object_event  1,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B2, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B2, -1
	object_event  8,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B2, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B2, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B2, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B2Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B2Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
