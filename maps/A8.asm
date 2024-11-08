	object_const_def
	const ARUINS_MONSTER1g
	const ARUINS_MONSTER2g
	const ARUINS_MONSTER3g
	const ARUINS_MONSTER4g
	const ARUINS_MONSTER5g
	const ARUINS_POKE_BALL1g
	const ARUINS_POKE_BALL2g


A8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearg
	appear ARUINS_POKE_BALL1g
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearg
	appear ARUINS_POKE_BALL2g
	endcallback


BallDisappearg:
	disappear ARUINS_POKE_BALL1g
	disappear ARUINS_POKE_BALL2g
	endcallback


RandomStairWarp8:
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
	
Monster1g:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeg
	ifequal 1, onebadgeg
	ifequal 2, twobadgeg
	ifequal 3, threebadgeg
	ifequal 4, fourbadgeg
	ifequal 5, fivebadgeg
	ifequal 6, sixbadgeg
	ifequal 7, sevenbadgeg
	ifequal 8, eightbadgeg
	end
	
Monster2g:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeg
	ifequal 1, onebadgeg
	ifequal 2, twobadgeg
	ifequal 3, threebadgeg
	ifequal 4, fourbadgeg
	ifequal 5, fivebadgeg
	ifequal 6, sixbadgeg
	ifequal 7, sevenbadgeg
	ifequal 8, eightbadgeg
	end

Monster3g:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeg
	ifequal 1, onebadgeg
	ifequal 2, twobadgeg
	ifequal 3, threebadgeg
	ifequal 4, fourbadgeg
	ifequal 5, fivebadgeg
	ifequal 6, sixbadgeg
	ifequal 7, sevenbadgeg
	ifequal 8, eightbadgeg
	end

Monster4g:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeg
	ifequal 1, onebadgeg
	ifequal 2, twobadgeg
	ifequal 3, threebadgeg
	ifequal 4, fourbadgeg
	ifequal 5, fivebadgeg
	ifequal 6, sixbadgeg
	ifequal 7, sevenbadgeg
	ifequal 8, eightbadgeg
	end

Monster5g:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeg
	ifequal 1, onebadgeg
	ifequal 2, twobadgeg
	ifequal 3, threebadgeg
	ifequal 4, fourbadgeg
	ifequal 5, fivebadgeg
	ifequal 6, sixbadgeg
	ifequal 7, sevenbadgeg
	ifequal 8, eightbadgeg
	end
	
	
nobadgeg:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

onebadgeg:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

twobadgeg:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

threebadgeg:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fourbadgeg:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fivebadgeg:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sixbadgeg:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sevenbadgeg:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

eightbadgeg:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end
	
A8Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1g
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL1g
	end	

	
A8Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2g
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear ARUINS_POKE_BALL2g
	end	

UnlockDoorsg:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1g
	appear ARUINS_POKE_BALL2g	
	refreshscreen $86
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end


A8_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8
	
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8



	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1g, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2g, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3g, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4g, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5g, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A8Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A8Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
