; DO A CTRL+F AND REPLACE ALL OF THE C11 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C11RUINS_MONSTER1C11
	const C11RUINS_MONSTER2C11
	const C11RUINS_MONSTER3C11
	const C11RUINS_MONSTER4C11
	const C11RUINS_MONSTER5C11
	const C11RUINS_POKE_BALL1C11
	const C11RUINS_POKE_BALL2C11


C11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC11
	appear C11RUINS_POKE_BALL1C11
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC11
	appear C11RUINS_POKE_BALL2C11
	endcallback


BallDisappearC11:
	disappear C11RUINS_POKE_BALL1C11
	disappear C11RUINS_POKE_BALL2C11
	endcallback


RandomStairWarpC11:
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
	
Monster1C11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC11
	ifequal 1, onebadgeC11
	ifequal 2, twobadgeC11
	ifequal 3, threebadgeC11
	ifequal 4, fourbadgeC11
	ifequal 5, fivebadgeC11
	ifequal 6, sixbadgeC11
	ifequal 7, sevenbadgeC11
	ifequal 8, eightbadgeC11
	end
	
Monster2C11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC11
	ifequal 1, onebadgeC11
	ifequal 2, twobadgeC11
	ifequal 3, threebadgeC11
	ifequal 4, fourbadgeC11
	ifequal 5, fivebadgeC11
	ifequal 6, sixbadgeC11
	ifequal 7, sevenbadgeC11
	ifequal 8, eightbadgeC11
	end

Monster3C11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC11
	ifequal 1, onebadgeC11
	ifequal 2, twobadgeC11
	ifequal 3, threebadgeC11
	ifequal 4, fourbadgeC11
	ifequal 5, fivebadgeC11
	ifequal 6, sixbadgeC11
	ifequal 7, sevenbadgeC11
	ifequal 8, eightbadgeC11
	end

Monster4C11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC11
	ifequal 1, onebadgeC11
	ifequal 2, twobadgeC11
	ifequal 3, threebadgeC11
	ifequal 4, fourbadgeC11
	ifequal 5, fivebadgeC11
	ifequal 6, sixbadgeC11
	ifequal 7, sevenbadgeC11
	ifequal 8, eightbadgeC11
	end

Monster5C11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC11
	ifequal 1, onebadgeC11
	ifequal 2, twobadgeC11
	ifequal 3, threebadgeC11
	ifequal 4, fourbadgeC11
	ifequal 5, fivebadgeC11
	ifequal 6, sixbadgeC11
	ifequal 7, sevenbadgeC11
	ifequal 8, eightbadgeC11
	end


nobadgeC11:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

onebadgeC11:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

twobadgeC11:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

threebadgeC11:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

fourbadgeC11:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

fivebadgeC11:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

sixbadgeC11:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

sevenbadgeC11:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end

eightbadgeC11:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC11
	end
	
C11Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C11RUINS_POKE_BALL1C11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C11RUINS_POKE_BALL1C11
	end	

	
C11Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C11RUINS_POKE_BALL2C11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C11RUINS_POKE_BALL2C11
	end	

UnlockDoorsC11:
	playsound SFX_FANFARE

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C11RUINS_POKE_BALL1C11
	appear C11RUINS_POKE_BALL2C11	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 10, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C11_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC11
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC11
	coord_event  10,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC11
	coord_event  11,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC11


	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C11, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C11, -1
	object_event 10,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C11, -1
	object_event  3,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C11, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C11, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C11Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 11,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C11Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
