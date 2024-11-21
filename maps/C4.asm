; DO A CTRL+F AND REPLACE ALL OF THE C4 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C4RUINS_MONSTER1C4
	const C4RUINS_MONSTER2C4
	const C4RUINS_MONSTER3C4
	const C4RUINS_MONSTER4C4
	const C4RUINS_MONSTER5C4
	const C4RUINS_POKE_BALL1C4
	const C4RUINS_POKE_BALL2C4


C4_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC4
	appear C4RUINS_POKE_BALL1C4
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC4
	appear C4RUINS_POKE_BALL2C4
	endcallback


BallDisappearC4:
	disappear C4RUINS_POKE_BALL1C4
	disappear C4RUINS_POKE_BALL2C4
	endcallback


RandomStairWarpC4:
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
	
Monster1C4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC4
	ifequal 1, onebadgeC4
	ifequal 2, twobadgeC4
	ifequal 3, threebadgeC4
	ifequal 4, fourbadgeC4
	ifequal 5, fivebadgeC4
	ifequal 6, sixbadgeC4
	ifequal 7, sevenbadgeC4
	ifequal 8, eightbadgeC4
	end
	
Monster2C4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC4
	ifequal 1, onebadgeC4
	ifequal 2, twobadgeC4
	ifequal 3, threebadgeC4
	ifequal 4, fourbadgeC4
	ifequal 5, fivebadgeC4
	ifequal 6, sixbadgeC4
	ifequal 7, sevenbadgeC4
	ifequal 8, eightbadgeC4
	end

Monster3C4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC4
	ifequal 1, onebadgeC4
	ifequal 2, twobadgeC4
	ifequal 3, threebadgeC4
	ifequal 4, fourbadgeC4
	ifequal 5, fivebadgeC4
	ifequal 6, sixbadgeC4
	ifequal 7, sevenbadgeC4
	ifequal 8, eightbadgeC4
	end

Monster4C4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC4
	ifequal 1, onebadgeC4
	ifequal 2, twobadgeC4
	ifequal 3, threebadgeC4
	ifequal 4, fourbadgeC4
	ifequal 5, fivebadgeC4
	ifequal 6, sixbadgeC4
	ifequal 7, sevenbadgeC4
	ifequal 8, eightbadgeC4
	end

Monster5C4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC4
	ifequal 1, onebadgeC4
	ifequal 2, twobadgeC4
	ifequal 3, threebadgeC4
	ifequal 4, fourbadgeC4
	ifequal 5, fivebadgeC4
	ifequal 6, sixbadgeC4
	ifequal 7, sevenbadgeC4
	ifequal 8, eightbadgeC4
	end


nobadgeC4:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

onebadgeC4:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

twobadgeC4:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

threebadgeC4:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

fourbadgeC4:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

fivebadgeC4:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

sixbadgeC4:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

sevenbadgeC4:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end

eightbadgeC4:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC4
	end
	
C4Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C4RUINS_POKE_BALL1C4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C4RUINS_POKE_BALL1C4
	end	

	
C4Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C4RUINS_POKE_BALL2C4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C4RUINS_POKE_BALL2C4
	end	

UnlockDoorsC4:
	playsound SFX_2ND_PLACE 

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C4RUINS_POKE_BALL1C4
	appear C4RUINS_POKE_BALL2C4	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 14, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end

C4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC4
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC4
	coord_event 14,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC4
	coord_event 15,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC4

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C4, -1
	object_event 15,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C4, -1
	object_event  9,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C4, -1
	object_event 14,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C4, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C4, -1
	object_event  6,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C4Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 11,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C4Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
