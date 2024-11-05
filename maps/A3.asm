	object_const_def
	const ARUINS_MONSTER1b
	const ARUINS_MONSTER2b
	const ARUINS_MONSTER3b
	const ARUINS_MONSTER4b
	const ARUINS_MONSTER5b
	const ARUINS_POKE_BALL1b
	const ARUINS_POKE_BALL2b	

A3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2
	
.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearb
	appear ARUINS_POKE_BALL1b
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearb
	appear ARUINS_POKE_BALL2b
	endcallback

BallDisappearb:
	disappear ARUINS_POKE_BALL1b
	disappear ARUINS_POKE_BALL2b
	endcallback


RandomStairWarp3:
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
	
Monster1b:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgeb
	ifequal 1, onebadgeb
	ifequal 2, twobadgeb
	ifequal 3, threebadgeb
	ifequal 4, fourbadgeb
	ifequal 5, fivebadgeb
	ifequal 6, sixbadgeb
	ifequal 7, sevenbadgeb
	ifequal 8, eightbadgeb
	end
	
Monster2b:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgeb
	ifequal 1, onebadgeb
	ifequal 2, twobadgeb
	ifequal 3, threebadgeb
	ifequal 4, fourbadgeb
	ifequal 5, fivebadgeb
	ifequal 6, sixbadgeb
	ifequal 7, sevenbadgeb
	ifequal 8, eightbadgeb
	end

Monster3b:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgeb
	ifequal 1, onebadgeb
	ifequal 2, twobadgeb
	ifequal 3, threebadgeb
	ifequal 4, fourbadgeb
	ifequal 5, fivebadgeb
	ifequal 6, sixbadgeb
	ifequal 7, sevenbadgeb
	ifequal 8, eightbadgeb
	end

Monster4b:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgeb
	ifequal 1, onebadgeb
	ifequal 2, twobadgeb
	ifequal 3, threebadgeb
	ifequal 4, fourbadgeb
	ifequal 5, fivebadgeb
	ifequal 6, sixbadgeb
	ifequal 7, sevenbadgeb
	ifequal 8, eightbadgeb
	end

Monster5b:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgeb
	ifequal 1, onebadgeb
	ifequal 2, twobadgeb
	ifequal 3, threebadgeb
	ifequal 4, fourbadgeb
	ifequal 5, fivebadgeb
	ifequal 6, sixbadgeb
	ifequal 7, sevenbadgeb
	ifequal 8, eightbadgeb
	end
	
	
nobadgeb:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

onebadgeb:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

twobadgeb:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

threebadgeb:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fourbadgeb:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fivebadgeb:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sixbadgeb:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sevenbadgeb:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

eightbadgeb:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end
	
A3Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1b
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	closetext
	disappear ARUINS_POKE_BALL1b
	end	

A3Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2b
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	closetext
	disappear ARUINS_POKE_BALL2b
	end	


UnlockDoorsB:
	opentext
	writetext ButtonText
	promptbutton
	closetext	
	appear ARUINS_POKE_BALL1b
	appear ARUINS_POKE_BALL2b	
	refreshscreen
	playsound SFX_ENTER_DOOR
	waitsfx
	changeblock 2, 0, 11
	changeblock 10, 0, 11
	reloadmappart
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end
	
	

A3_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp3
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp3

	coord_event 10,  0, SCENE_RANDOMSTAIRS, RandomStairWarp3
	coord_event 11,  0, SCENE_RANDOMSTAIRS, RandomStairWarp3



	def_bg_events

	def_object_events
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1b, -1
	object_event  5,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2b, -1
	object_event 11,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3b, -1
	object_event  7,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4b, -1
	object_event  2,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5b, -1
	object_event  3,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A3Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 10,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A3Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
