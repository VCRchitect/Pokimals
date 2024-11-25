; DO A CTRL+F AND REPLACE ALL OF THE C6 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C6RUINS_MONSTER1C6
	const C6RUINS_MONSTER2C6
	const C6RUINS_MONSTER3C6
	const C6RUINS_MONSTER4C6
	const C6RUINS_MONSTER5C6
	const C6RUINS_POKE_BALL1C6
	const C6RUINS_POKE_BALL2C6


C6_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC6
	appear C6RUINS_POKE_BALL1C6
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC6
	appear C6RUINS_POKE_BALL2C6
	endcallback


BallDisappearC6:
	disappear C6RUINS_POKE_BALL1C6
	disappear C6RUINS_POKE_BALL2C6
	endcallback


RandomStairWarpC6:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperC
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp C10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp CPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1C6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC6
	ifequal 1, onebadgeC6
	ifequal 2, twobadgeC6
	ifequal 3, threebadgeC6
	ifequal 4, fourbadgeC6
	ifequal 5, fivebadgeC6
	ifequal 6, sixbadgeC6
	ifequal 7, sevenbadgeC6
	ifequal 8, eightbadgeC6
	end
	
Monster2C6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC6
	ifequal 1, onebadgeC6
	ifequal 2, twobadgeC6
	ifequal 3, threebadgeC6
	ifequal 4, fourbadgeC6
	ifequal 5, fivebadgeC6
	ifequal 6, sixbadgeC6
	ifequal 7, sevenbadgeC6
	ifequal 8, eightbadgeC6
	end

Monster3C6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC6
	ifequal 1, onebadgeC6
	ifequal 2, twobadgeC6
	ifequal 3, threebadgeC6
	ifequal 4, fourbadgeC6
	ifequal 5, fivebadgeC6
	ifequal 6, sixbadgeC6
	ifequal 7, sevenbadgeC6
	ifequal 8, eightbadgeC6
	end

Monster4C6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC6
	ifequal 1, onebadgeC6
	ifequal 2, twobadgeC6
	ifequal 3, threebadgeC6
	ifequal 4, fourbadgeC6
	ifequal 5, fivebadgeC6
	ifequal 6, sixbadgeC6
	ifequal 7, sevenbadgeC6
	ifequal 8, eightbadgeC6
	end

Monster5C6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC6
	ifequal 1, onebadgeC6
	ifequal 2, twobadgeC6
	ifequal 3, threebadgeC6
	ifequal 4, fourbadgeC6
	ifequal 5, fivebadgeC6
	ifequal 6, sixbadgeC6
	ifequal 7, sevenbadgeC6
	ifequal 8, eightbadgeC6
	end


nobadgeC6:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

onebadgeC6:
	RuinRandomC1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

twobadgeC6:
	RuinRandomC2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

threebadgeC6:
	RuinRandomC3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

fourbadgeC6:
	RuinRandomC4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

fivebadgeC6:
	RuinRandomC5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

sixbadgeC6:
	RuinRandomC6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

sevenbadgeC6:
	RuinRandomC7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end

eightbadgeC6:
	RuinRandomC8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC6
	end
	
C6Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C6RUINS_POKE_BALL1C6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C6RUINS_POKE_BALL1C6
	end	

	
C6Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C6RUINS_POKE_BALL2C6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C6RUINS_POKE_BALL2C6
	end	

UnlockDoorsC6:
	playsound SFX_2ND_PLACE 

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C6RUINS_POKE_BALL1C6
	appear C6RUINS_POKE_BALL2C6	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C6_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC6
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC6


	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C6, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C6, -1
	object_event  3,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C6, -1
	object_event  6,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C6, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C6, -1
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C6Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C6Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
