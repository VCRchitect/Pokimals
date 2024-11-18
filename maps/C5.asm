; DO A CTRL+F AND REPLACE ALL OF THE C5 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C5RUINS_MONSTER1C5
	const C5RUINS_MONSTER2C5
	const C5RUINS_MONSTER3C5
	const C5RUINS_MONSTER4C5
	const C5RUINS_MONSTER5C5
	const C5RUINS_POKE_BALL1C5
	const C5RUINS_POKE_BALL2C5


C5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC5
	appear C5RUINS_POKE_BALL1C5
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC5
	appear C5RUINS_POKE_BALL2C5
	endcallback


BallDisappearC5:
	disappear C5RUINS_POKE_BALL1C5
	disappear C5RUINS_POKE_BALL2C5
	endcallback


RandomStairWarpC5:
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
	
Monster1C5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC5
	ifequal 1, onebadgeC5
	ifequal 2, twobadgeC5
	ifequal 3, threebadgeC5
	ifequal 4, fourbadgeC5
	ifequal 5, fivebadgeC5
	ifequal 6, sixbadgeC5
	ifequal 7, sevenbadgeC5
	ifequal 8, eightbadgeC5
	end
	
Monster2C5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC5
	ifequal 1, onebadgeC5
	ifequal 2, twobadgeC5
	ifequal 3, threebadgeC5
	ifequal 4, fourbadgeC5
	ifequal 5, fivebadgeC5
	ifequal 6, sixbadgeC5
	ifequal 7, sevenbadgeC5
	ifequal 8, eightbadgeC5
	end

Monster3C5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC5
	ifequal 1, onebadgeC5
	ifequal 2, twobadgeC5
	ifequal 3, threebadgeC5
	ifequal 4, fourbadgeC5
	ifequal 5, fivebadgeC5
	ifequal 6, sixbadgeC5
	ifequal 7, sevenbadgeC5
	ifequal 8, eightbadgeC5
	end

Monster4C5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC5
	ifequal 1, onebadgeC5
	ifequal 2, twobadgeC5
	ifequal 3, threebadgeC5
	ifequal 4, fourbadgeC5
	ifequal 5, fivebadgeC5
	ifequal 6, sixbadgeC5
	ifequal 7, sevenbadgeC5
	ifequal 8, eightbadgeC5
	end

Monster5C5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC5
	ifequal 1, onebadgeC5
	ifequal 2, twobadgeC5
	ifequal 3, threebadgeC5
	ifequal 4, fourbadgeC5
	ifequal 5, fivebadgeC5
	ifequal 6, sixbadgeC5
	ifequal 7, sevenbadgeC5
	ifequal 8, eightbadgeC5
	end


nobadgeC5:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

onebadgeC5:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

twobadgeC5:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

threebadgeC5:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

fourbadgeC5:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

fivebadgeC5:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

sixbadgeC5:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

sevenbadgeC5:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end

eightbadgeC5:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC5
	end
	
C5Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C5RUINS_POKE_BALL1C5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C5RUINS_POKE_BALL1C5
	end	

	
C5Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C5RUINS_POKE_BALL2C5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C5RUINS_POKE_BALL2C5
	end	

UnlockDoorsC5:
	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C5RUINS_POKE_BALL1C5
	appear C5RUINS_POKE_BALL2C5	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C5_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC5
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC5


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C5, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C5, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C5, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C5, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C5, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C5Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C5Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
