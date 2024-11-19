; DO A CTRL+F AND REPLACE ALL OF THE C8 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C8RUINS_MONSTER1C8
	const C8RUINS_MONSTER2C8
	const C8RUINS_MONSTER3C8
	const C8RUINS_MONSTER4C8
	const C8RUINS_MONSTER5C8
	const C8RUINS_POKE_BALL1C8
	const C8RUINS_POKE_BALL2C8


C8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC8
	appear C8RUINS_POKE_BALL1C8
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC8
	appear C8RUINS_POKE_BALL2C8
	endcallback


BallDisappearC8:
	disappear C8RUINS_POKE_BALL1C8
	disappear C8RUINS_POKE_BALL2C8
	endcallback


RandomStairWarpC8:
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
	
Monster1C8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC8
	ifequal 1, onebadgeC8
	ifequal 2, twobadgeC8
	ifequal 3, threebadgeC8
	ifequal 4, fourbadgeC8
	ifequal 5, fivebadgeC8
	ifequal 6, sixbadgeC8
	ifequal 7, sevenbadgeC8
	ifequal 8, eightbadgeC8
	end
	
Monster2C8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC8
	ifequal 1, onebadgeC8
	ifequal 2, twobadgeC8
	ifequal 3, threebadgeC8
	ifequal 4, fourbadgeC8
	ifequal 5, fivebadgeC8
	ifequal 6, sixbadgeC8
	ifequal 7, sevenbadgeC8
	ifequal 8, eightbadgeC8
	end

Monster3C8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC8
	ifequal 1, onebadgeC8
	ifequal 2, twobadgeC8
	ifequal 3, threebadgeC8
	ifequal 4, fourbadgeC8
	ifequal 5, fivebadgeC8
	ifequal 6, sixbadgeC8
	ifequal 7, sevenbadgeC8
	ifequal 8, eightbadgeC8
	end

Monster4C8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC8
	ifequal 1, onebadgeC8
	ifequal 2, twobadgeC8
	ifequal 3, threebadgeC8
	ifequal 4, fourbadgeC8
	ifequal 5, fivebadgeC8
	ifequal 6, sixbadgeC8
	ifequal 7, sevenbadgeC8
	ifequal 8, eightbadgeC8
	end

Monster5C8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC8
	ifequal 1, onebadgeC8
	ifequal 2, twobadgeC8
	ifequal 3, threebadgeC8
	ifequal 4, fourbadgeC8
	ifequal 5, fivebadgeC8
	ifequal 6, sixbadgeC8
	ifequal 7, sevenbadgeC8
	ifequal 8, eightbadgeC8
	end


nobadgeC8:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

onebadgeC8:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

twobadgeC8:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

threebadgeC8:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

fourbadgeC8:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

fivebadgeC8:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

sixbadgeC8:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

sevenbadgeC8:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end

eightbadgeC8:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC8
	end
	
C8Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C8RUINS_POKE_BALL1C8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C8RUINS_POKE_BALL1C8
	end	

	
C8Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C8RUINS_POKE_BALL2C8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C8RUINS_POKE_BALL2C8
	end	

UnlockDoorsC8:
	playsound SFX_FANFARE

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C8RUINS_POKE_BALL1C8
	appear C8RUINS_POKE_BALL2C8	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C8_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC8
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC8


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C8, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C8, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C8, -1
	object_event  5,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C8, -1
	object_event  4,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C8, -1
	object_event  3,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C8Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C8Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
