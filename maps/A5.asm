	object_const_def
	const ARUINS_MONSTER1d
	const ARUINS_MONSTER2d
	const ARUINS_MONSTER3d
	const ARUINS_MONSTER4d
	const ARUINS_MONSTER5d
	const ARUINS_POKE_BALL1d
	const ARUINS_POKE_BALL2d
	

A5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2
	
.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeard
	appear ARUINS_POKE_BALL1d
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeard
	appear ARUINS_POKE_BALL2d
	endcallback


BallDisappeard:
	disappear ARUINS_POKE_BALL1d
	disappear ARUINS_POKE_BALL2d
	endcallback


RandomStairWarp5:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warper
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp A10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp APREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end
	
Monster2d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end

Monster3d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end

Monster4d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end

Monster5d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end
	
	
nobadged:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

onebadged:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

twobadged:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

threebadged:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fourbadged:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fivebadged:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sixbadged:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sevenbadged:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

eightbadged:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end
	
A5Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1d
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	

	closetext
	disappear ARUINS_POKE_BALL1d
	end	
	
A5Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2d
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL2d
	end	

UnlockDoorsd:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1d
	appear ARUINS_POKE_BALL2d	
	refreshscreen $86
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end
	

A5_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp5
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp5

	coord_event 10,  0, SCENE_RANDOMSTAIRS, RandomStairWarp5
	coord_event 11,  0, SCENE_RANDOMSTAIRS, RandomStairWarp5



	def_bg_events

	def_object_events
	object_event  4, 10, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1d, -1
	object_event 10, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2d, -1
	object_event 10,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3d, -1
	object_event  7, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4d, -1
	object_event  2,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5d, -1
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A5Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A5Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
