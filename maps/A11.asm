	object_const_def
	const ARUINS_MONSTER1j
	const ARUINS_MONSTER2j
	const ARUINS_MONSTER3j
	const ARUINS_MONSTER4j
	const ARUINS_MONSTER5j
	const ARUINS_POKE_BALL1j
	const ARUINS_POKE_BALL2j
	

A11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end
	
.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearj
	appear ARUINS_POKE_BALL1j
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearj
	appear ARUINS_POKE_BALL2j
	endcallback

BallDisappearj:
	disappear ARUINS_POKE_BALL1j
	disappear ARUINS_POKE_BALL2j
	endcallback
	

RandomStairWarp11:
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
	
Monster1j:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgej
	ifequal 1, onebadgej
	ifequal 2, twobadgej
	ifequal 3, threebadgej
	ifequal 4, fourbadgej
	ifequal 5, fivebadgej
	ifequal 6, sixbadgej
	ifequal 7, sevenbadgej
	ifequal 8, eightbadgej
	end
	
Monster2j:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgej
	ifequal 1, onebadgej
	ifequal 2, twobadgej
	ifequal 3, threebadgej
	ifequal 4, fourbadgej
	ifequal 5, fivebadgej
	ifequal 6, sixbadgej
	ifequal 7, sevenbadgej
	ifequal 8, eightbadgej
	end

Monster3j:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgej
	ifequal 1, onebadgej
	ifequal 2, twobadgej
	ifequal 3, threebadgej
	ifequal 4, fourbadgej
	ifequal 5, fivebadgej
	ifequal 6, sixbadgej
	ifequal 7, sevenbadgej
	ifequal 8, eightbadgej
	end

Monster4j:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgej
	ifequal 1, onebadgej
	ifequal 2, twobadgej
	ifequal 3, threebadgej
	ifequal 4, fourbadgej
	ifequal 5, fivebadgej
	ifequal 6, sixbadgej
	ifequal 7, sevenbadgej
	ifequal 8, eightbadgej
	end

Monster5j:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgej
	ifequal 1, onebadgej
	ifequal 2, twobadgej
	ifequal 3, threebadgej
	ifequal 4, fourbadgej
	ifequal 5, fivebadgej
	ifequal 6, sixbadgej
	ifequal 7, sevenbadgej
	ifequal 8, eightbadgej
	end
	
	
nobadgej:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

onebadgej:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

twobadgej:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

threebadgej:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fourbadgej:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fivebadgej:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sixbadgej:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sevenbadgej:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

eightbadgej:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end
	
A11Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1j
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL1j
	end	

	
A11Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2j
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL2j
	end	

UnlockDoorsj:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1j
	appear ARUINS_POKE_BALL2j		
	changedoor 2, 0, 11
	changedoor 6, 0, 11
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


	
A11_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11



	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1j, -1
	object_event  7,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2j, -1
	object_event  6,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3j, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4j, -1
	object_event  2,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5j, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A11Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A11Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
