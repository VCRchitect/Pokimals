	object_const_def
	const ARUINS_MONSTER1i
	const ARUINS_MONSTER2i
	const ARUINS_MONSTER3i
	const ARUINS_MONSTER4i
	const ARUINS_MONSTER5i
	const ARUINS_POKE_BALL1i
	const ARUINS_POKE_BALL2i
	

A10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2
	
.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeari
	appear ARUINS_POKE_BALL1i
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeari
	appear ARUINS_POKE_BALL2i
	endcallback

BallDisappeari:
	disappear ARUINS_POKE_BALL1i
	disappear ARUINS_POKE_BALL2i
	endcallback


Monster1i:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgei
	ifequal 1, onebadgei
	ifequal 2, twobadgei
	ifequal 3, threebadgei
	ifequal 4, fourbadgei
	ifequal 5, fivebadgei
	ifequal 6, sixbadgei
	ifequal 7, sevenbadgei
	ifequal 8, eightbadgei
	end
	
Monster2i:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgei
	ifequal 1, onebadgei
	ifequal 2, twobadgei
	ifequal 3, threebadgei
	ifequal 4, fourbadgei
	ifequal 5, fivebadgei
	ifequal 6, sixbadgei
	ifequal 7, sevenbadgei
	ifequal 8, eightbadgei
	end

Monster3i:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgei
	ifequal 1, onebadgei
	ifequal 2, twobadgei
	ifequal 3, threebadgei
	ifequal 4, fourbadgei
	ifequal 5, fivebadgei
	ifequal 6, sixbadgei
	ifequal 7, sevenbadgei
	ifequal 8, eightbadgei
	end

Monster4i:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgei
	ifequal 1, onebadgei
	ifequal 2, twobadgei
	ifequal 3, threebadgei
	ifequal 4, fourbadgei
	ifequal 5, fivebadgei
	ifequal 6, sixbadgei
	ifequal 7, sevenbadgei
	ifequal 8, eightbadgei
	end

Monster5i:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readmem wBadges
	ifequal 0, nobadgei
	ifequal 1, onebadgei
	ifequal 2, twobadgei
	ifequal 3, threebadgei
	ifequal 4, fourbadgei
	ifequal 5, fivebadgei
	ifequal 6, sixbadgei
	ifequal 7, sevenbadgei
	ifequal 8, eightbadgei
	end
	
	
nobadgei:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

onebadgei:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

twobadgei:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

threebadgei:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fourbadgei:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fivebadgei:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sixbadgei:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sevenbadgei:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

eightbadgei:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

A10Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1i
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL1i
	end	
	
A10Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2i
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL2i
	end	



UnlockDoorsi:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1i
	appear ARUINS_POKE_BALL2i	
	refreshscreen
	playsound SFX_ENTER_DOOR
	waitsfx
	changeblock 2, 0, 120
	changeblock 10, 0, 121
	reloadmappart
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end

RandomStairWarpA10a:
	warp AHEAL, 4,  4
	end

RandomStairWarpA10b:
	warp AMART, 4,  4
	end
	
A10_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpA10a
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpA10a
	coord_event  10,  0, SCENE_RANDOMSTAIRS, RandomStairWarpA10b
	coord_event  11,  0, SCENE_RANDOMSTAIRS, RandomStairWarpA10b



	def_bg_events

	def_object_events
	object_event  6,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1i, -1
	object_event  6,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2i, -1
	object_event 11,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3i, -1
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4i, -1
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5i, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A10Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A10Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
