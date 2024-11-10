	object_const_def
	const ARUINS_MONSTER1f
	const ARUINS_MONSTER2f
	const ARUINS_MONSTER3f
	const ARUINS_MONSTER4f
	const ARUINS_MONSTER5f
	const ARUINS_POKE_BALL1f
	const ARUINS_POKE_BALL2f


A7_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end
	
.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearf
	appear ARUINS_POKE_BALL1f
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearf
	appear ARUINS_POKE_BALL2f
	endcallback


BallDisappearf:
	disappear ARUINS_POKE_BALL1f
	disappear ARUINS_POKE_BALL2f
	endcallback
	

RandomStairWarp7:
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
	
Monster1f:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgef
	ifequal 1, onebadgef
	ifequal 2, twobadgef
	ifequal 3, threebadgef
	ifequal 4, fourbadgef
	ifequal 5, fivebadgef
	ifequal 6, sixbadgef
	ifequal 7, sevenbadgef
	ifequal 8, eightbadgef
	end
	
Monster2f:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgef
	ifequal 1, onebadgef
	ifequal 2, twobadgef
	ifequal 3, threebadgef
	ifequal 4, fourbadgef
	ifequal 5, fivebadgef
	ifequal 6, sixbadgef
	ifequal 7, sevenbadgef
	ifequal 8, eightbadgef
	end

Monster3f:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgef
	ifequal 1, onebadgef
	ifequal 2, twobadgef
	ifequal 3, threebadgef
	ifequal 4, fourbadgef
	ifequal 5, fivebadgef
	ifequal 6, sixbadgef
	ifequal 7, sevenbadgef
	ifequal 8, eightbadgef
	end

Monster4f:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgef
	ifequal 1, onebadgef
	ifequal 2, twobadgef
	ifequal 3, threebadgef
	ifequal 4, fourbadgef
	ifequal 5, fivebadgef
	ifequal 6, sixbadgef
	ifequal 7, sevenbadgef
	ifequal 8, eightbadgef
	end

Monster5f:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgef
	ifequal 1, onebadgef
	ifequal 2, twobadgef
	ifequal 3, threebadgef
	ifequal 4, fourbadgef
	ifequal 5, fivebadgef
	ifequal 6, sixbadgef
	ifequal 7, sevenbadgef
	ifequal 8, eightbadgef
	end
	
	
nobadgef:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

onebadgef:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

twobadgef:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

threebadgef:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

fourbadgef:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

fivebadgef:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

sixbadgef:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

sevenbadgef:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end

eightbadgef:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsF
	end
	
A7Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1f
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL1f
	end	
	
A7Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2f
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	

	closetext
	disappear ARUINS_POKE_BALL2f
	end	


UnlockDoorsF:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1f
	appear ARUINS_POKE_BALL2f		
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 6, 0, $0B

	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end
		
	

A7_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp7
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp7
	
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp7
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp7



	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1f, -1
	object_event  6,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2f, -1
	object_event  5,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3f, -1
	object_event  2,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4f, -1
	object_event  2,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5f, -1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A7Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A7Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
