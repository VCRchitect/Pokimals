; DO A CTRL+F AND REPLACE ALL OF THE C9 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C9RUINS_MONSTER1C9
	const C9RUINS_MONSTER2C9
	const C9RUINS_MONSTER3C9
	const C9RUINS_MONSTER4C9
	const C9RUINS_MONSTER5C9
	const C9RUINS_POKE_BALL1C9
	const C9RUINS_POKE_BALL2C9


C9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC9
	appear C9RUINS_POKE_BALL1C9
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC9
	appear C9RUINS_POKE_BALL2C9
	endcallback


BallDisappearC9:
	disappear C9RUINS_POKE_BALL1C9
	disappear C9RUINS_POKE_BALL2C9
	endcallback


RandomStairWarpC9:
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
	
Monster1C9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC9
	ifequal 1, onebadgeC9
	ifequal 2, twobadgeC9
	ifequal 3, threebadgeC9
	ifequal 4, fourbadgeC9
	ifequal 5, fivebadgeC9
	ifequal 6, sixbadgeC9
	ifequal 7, sevenbadgeC9
	ifequal 8, eightbadgeC9
	end
	
Monster2C9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC9
	ifequal 1, onebadgeC9
	ifequal 2, twobadgeC9
	ifequal 3, threebadgeC9
	ifequal 4, fourbadgeC9
	ifequal 5, fivebadgeC9
	ifequal 6, sixbadgeC9
	ifequal 7, sevenbadgeC9
	ifequal 8, eightbadgeC9
	end

Monster3C9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC9
	ifequal 1, onebadgeC9
	ifequal 2, twobadgeC9
	ifequal 3, threebadgeC9
	ifequal 4, fourbadgeC9
	ifequal 5, fivebadgeC9
	ifequal 6, sixbadgeC9
	ifequal 7, sevenbadgeC9
	ifequal 8, eightbadgeC9
	end

Monster4C9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC9
	ifequal 1, onebadgeC9
	ifequal 2, twobadgeC9
	ifequal 3, threebadgeC9
	ifequal 4, fourbadgeC9
	ifequal 5, fivebadgeC9
	ifequal 6, sixbadgeC9
	ifequal 7, sevenbadgeC9
	ifequal 8, eightbadgeC9
	end

Monster5C9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC9
	ifequal 1, onebadgeC9
	ifequal 2, twobadgeC9
	ifequal 3, threebadgeC9
	ifequal 4, fourbadgeC9
	ifequal 5, fivebadgeC9
	ifequal 6, sixbadgeC9
	ifequal 7, sevenbadgeC9
	ifequal 8, eightbadgeC9
	end


nobadgeC9:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

onebadgeC9:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

twobadgeC9:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

threebadgeC9:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

fourbadgeC9:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

fivebadgeC9:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

sixbadgeC9:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

sevenbadgeC9:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end

eightbadgeC9:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC9
	end
	
C9Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C9RUINS_POKE_BALL1C9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C9RUINS_POKE_BALL1C9
	end	

	
C9Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C9RUINS_POKE_BALL2C9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C9RUINS_POKE_BALL2C9
	end	

UnlockDoorsC9:
	playsound SFX_FANFARE

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C9RUINS_POKE_BALL1C9
	appear C9RUINS_POKE_BALL2C9	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 6, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C9_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC9
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC9


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C9, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C9, -1
	object_event 10,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C9, -1
	object_event  3,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C9, -1
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C9, -1
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C9Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  8,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C9Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
