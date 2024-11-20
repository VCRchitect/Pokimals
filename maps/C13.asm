; DO A CTRL+F AND REPLACE ALL OF THE C13 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C13RUINS_MONSTER1C13
	const C13RUINS_MONSTER2C13
	const C13RUINS_MONSTER3C13
	const C13RUINS_MONSTER4C13
	const C13RUINS_MONSTER5C13
	const C13RUINS_POKE_BALL1C13
	const C13RUINS_POKE_BALL2C13


C13_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC13
	appear C13RUINS_POKE_BALL1C13
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC13
	appear C13RUINS_POKE_BALL2C13
	endcallback


BallDisappearC13:
	disappear C13RUINS_POKE_BALL1C13
	disappear C13RUINS_POKE_BALL2C13
	endcallback


RandomStairWarpC13:
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
	
Monster1C13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC13
	ifequal 1, onebadgeC13
	ifequal 2, twobadgeC13
	ifequal 3, threebadgeC13
	ifequal 4, fourbadgeC13
	ifequal 5, fivebadgeC13
	ifequal 6, sixbadgeC13
	ifequal 7, sevenbadgeC13
	ifequal 8, eightbadgeC13
	end
	
Monster2C13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC13
	ifequal 1, onebadgeC13
	ifequal 2, twobadgeC13
	ifequal 3, threebadgeC13
	ifequal 4, fourbadgeC13
	ifequal 5, fivebadgeC13
	ifequal 6, sixbadgeC13
	ifequal 7, sevenbadgeC13
	ifequal 8, eightbadgeC13
	end

Monster3C13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC13
	ifequal 1, onebadgeC13
	ifequal 2, twobadgeC13
	ifequal 3, threebadgeC13
	ifequal 4, fourbadgeC13
	ifequal 5, fivebadgeC13
	ifequal 6, sixbadgeC13
	ifequal 7, sevenbadgeC13
	ifequal 8, eightbadgeC13
	end

Monster4C13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC13
	ifequal 1, onebadgeC13
	ifequal 2, twobadgeC13
	ifequal 3, threebadgeC13
	ifequal 4, fourbadgeC13
	ifequal 5, fivebadgeC13
	ifequal 6, sixbadgeC13
	ifequal 7, sevenbadgeC13
	ifequal 8, eightbadgeC13
	end

Monster5C13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC13
	ifequal 1, onebadgeC13
	ifequal 2, twobadgeC13
	ifequal 3, threebadgeC13
	ifequal 4, fourbadgeC13
	ifequal 5, fivebadgeC13
	ifequal 6, sixbadgeC13
	ifequal 7, sevenbadgeC13
	ifequal 8, eightbadgeC13
	end


nobadgeC13:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

onebadgeC13:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

twobadgeC13:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

threebadgeC13:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

fourbadgeC13:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

fivebadgeC13:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

sixbadgeC13:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

sevenbadgeC13:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end

eightbadgeC13:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC13
	end
	
C13Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C13RUINS_POKE_BALL1C13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C13RUINS_POKE_BALL1C13
	end	

	
C13Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C13RUINS_POKE_BALL2C13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C13RUINS_POKE_BALL2C13
	end	

UnlockDoorsC13:
	playsound SFX_2ND_PLACE 

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C13RUINS_POKE_BALL1C13
	appear C13RUINS_POKE_BALL2C13	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C13_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC13
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC13


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C13, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C13, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C13, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C13, -1
	object_event  5,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C13, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C13Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C13Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
