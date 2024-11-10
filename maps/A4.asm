	object_const_def
	const ARUINS_MONSTER1c
	const ARUINS_MONSTER2c
	const ARUINS_MONSTER3c
	const ARUINS_MONSTER4c
	const ARUINS_MONSTER5c
	const ARUINS_POKE_BALL1c
	const ARUINS_POKE_BALL2c
	

A4_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2
	

.DummyScene: ; unreferenced
	end


.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearc
	appear ARUINS_POKE_BALL1c
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearc
	appear ARUINS_POKE_BALL2c
	endcallback


BallDisappearc:
	disappear ARUINS_POKE_BALL1c
	disappear ARUINS_POKE_BALL2c
	endcallback


RandomStairWarp4:
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
	
Monster1c:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgec
	ifequal 1, onebadgec
	ifequal 2, twobadgec
	ifequal 3, threebadgec
	ifequal 4, fourbadgec
	ifequal 5, fivebadgec
	ifequal 6, sixbadgec
	ifequal 7, sevenbadgec
	ifequal 8, eightbadgec
	end
	
Monster2c:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgec
	ifequal 1, onebadgec
	ifequal 2, twobadgec
	ifequal 3, threebadgec
	ifequal 4, fourbadgec
	ifequal 5, fivebadgec
	ifequal 6, sixbadgec
	ifequal 7, sevenbadgec
	ifequal 8, eightbadgec
	end

Monster3c:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgec
	ifequal 1, onebadgec
	ifequal 2, twobadgec
	ifequal 3, threebadgec
	ifequal 4, fourbadgec
	ifequal 5, fivebadgec
	ifequal 6, sixbadgec
	ifequal 7, sevenbadgec
	ifequal 8, eightbadgec
	end

Monster4c:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgec
	ifequal 1, onebadgec
	ifequal 2, twobadgec
	ifequal 3, threebadgec
	ifequal 4, fourbadgec
	ifequal 5, fivebadgec
	ifequal 6, sixbadgec
	ifequal 7, sevenbadgec
	ifequal 8, eightbadgec
	end

Monster5c:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgec
	ifequal 1, onebadgec
	ifequal 2, twobadgec
	ifequal 3, threebadgec
	ifequal 4, fourbadgec
	ifequal 5, fivebadgec
	ifequal 6, sixbadgec
	ifequal 7, sevenbadgec
	ifequal 8, eightbadgec
	end
	
	
nobadgec:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

onebadgec:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

twobadgec:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

threebadgec:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

fourbadgec:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

fivebadgec:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

sixbadgec:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

sevenbadgec:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end

eightbadgec:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsC
	end
	
A4Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1c
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	closetext
	disappear ARUINS_POKE_BALL1c
	end	

	
A4Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2c
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	closetext
	disappear ARUINS_POKE_BALL2c
	end	


UnlockDoorsC:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1c
	appear ARUINS_POKE_BALL2c	
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
	

A4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp4
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp4
	
	coord_event 14,  0, SCENE_RANDOMSTAIRS, RandomStairWarp4
	coord_event 15,  0, SCENE_RANDOMSTAIRS, RandomStairWarp4



	def_bg_events

	def_object_events
	object_event 13,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1c, -1
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2c, -1
	object_event 15,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3c, -1
	object_event  7,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4c, -1
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5c, -1
	object_event  6,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A4Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 11,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A4Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
