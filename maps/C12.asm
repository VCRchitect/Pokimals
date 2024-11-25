; DO A CTRL+F AND REPLACE ALL OF THE C12 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C12RUINS_MONSTER1C12
	const C12RUINS_MONSTER2C12
	const C12RUINS_MONSTER3C12
	const C12RUINS_MONSTER4C12
	const C12RUINS_MONSTER5C12
	const C12RUINS_POKE_BALL1C12
	const C12RUINS_POKE_BALL2C12


C12_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC12
	appear C12RUINS_POKE_BALL1C12
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC12
	appear C12RUINS_POKE_BALL2C12
	endcallback


BallDisappearC12:
	disappear C12RUINS_POKE_BALL1C12
	disappear C12RUINS_POKE_BALL2C12
	endcallback


RandomStairWarpC12:
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
	
Monster1C12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC12
	ifequal 1, onebadgeC12
	ifequal 2, twobadgeC12
	ifequal 3, threebadgeC12
	ifequal 4, fourbadgeC12
	ifequal 5, fivebadgeC12
	ifequal 6, sixbadgeC12
	ifequal 7, sevenbadgeC12
	ifequal 8, eightbadgeC12
	end
	
Monster2C12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC12
	ifequal 1, onebadgeC12
	ifequal 2, twobadgeC12
	ifequal 3, threebadgeC12
	ifequal 4, fourbadgeC12
	ifequal 5, fivebadgeC12
	ifequal 6, sixbadgeC12
	ifequal 7, sevenbadgeC12
	ifequal 8, eightbadgeC12
	end

Monster3C12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC12
	ifequal 1, onebadgeC12
	ifequal 2, twobadgeC12
	ifequal 3, threebadgeC12
	ifequal 4, fourbadgeC12
	ifequal 5, fivebadgeC12
	ifequal 6, sixbadgeC12
	ifequal 7, sevenbadgeC12
	ifequal 8, eightbadgeC12
	end

Monster4C12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC12
	ifequal 1, onebadgeC12
	ifequal 2, twobadgeC12
	ifequal 3, threebadgeC12
	ifequal 4, fourbadgeC12
	ifequal 5, fivebadgeC12
	ifequal 6, sixbadgeC12
	ifequal 7, sevenbadgeC12
	ifequal 8, eightbadgeC12
	end

Monster5C12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC12
	ifequal 1, onebadgeC12
	ifequal 2, twobadgeC12
	ifequal 3, threebadgeC12
	ifequal 4, fourbadgeC12
	ifequal 5, fivebadgeC12
	ifequal 6, sixbadgeC12
	ifequal 7, sevenbadgeC12
	ifequal 8, eightbadgeC12
	end


nobadgeC12:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

onebadgeC12:
	RuinRandomC1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

twobadgeC12:
	RuinRandomC2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

threebadgeC12:
	RuinRandomC3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

fourbadgeC12:
	RuinRandomC4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

fivebadgeC12:
	RuinRandomC5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

sixbadgeC12:
	RuinRandomC6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

sevenbadgeC12:
	RuinRandomC7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end

eightbadgeC12:
	RuinRandomC8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC12
	end
	
C12Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C12RUINS_POKE_BALL1C12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C12RUINS_POKE_BALL1C12
	end	

	
C12Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C12RUINS_POKE_BALL2C12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C12RUINS_POKE_BALL2C12
	end	

UnlockDoorsC12:
	playsound SFX_2ND_PLACE 

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C12RUINS_POKE_BALL1C12
	appear C12RUINS_POKE_BALL2C12	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 6, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C12_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC12
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC12
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC12
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC12

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C12, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C12, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C12, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C12, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C12, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C12Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C12Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
