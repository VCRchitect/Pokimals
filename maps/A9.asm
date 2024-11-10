	object_const_def
	const ARUINS_MONSTER1h
	const ARUINS_MONSTER2h
	const ARUINS_MONSTER3h
	const ARUINS_MONSTER4h
	const ARUINS_MONSTER5h
	const ARUINS_POKE_BALL1h
	const ARUINS_POKE_BALL2h

A9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearh
	appear ARUINS_POKE_BALL1h
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearh
	appear ARUINS_POKE_BALL2h
	endcallback

BallDisappearh:
	disappear ARUINS_POKE_BALL1h
	disappear ARUINS_POKE_BALL2h
	endcallback


RandomStairWarp9:
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
	
Monster1h:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeh
	ifequal 1, onebadgeh
	ifequal 2, twobadgeh
	ifequal 3, threebadgeh
	ifequal 4, fourbadgeh
	ifequal 5, fivebadgeh
	ifequal 6, sixbadgeh
	ifequal 7, sevenbadgeh
	ifequal 8, eightbadgeh
	end
	
Monster2h:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeh
	ifequal 1, onebadgeh
	ifequal 2, twobadgeh
	ifequal 3, threebadgeh
	ifequal 4, fourbadgeh
	ifequal 5, fivebadgeh
	ifequal 6, sixbadgeh
	ifequal 7, sevenbadgeh
	ifequal 8, eightbadgeh
	end

Monster3h:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeh
	ifequal 1, onebadgeh
	ifequal 2, twobadgeh
	ifequal 3, threebadgeh
	ifequal 4, fourbadgeh
	ifequal 5, fivebadgeh
	ifequal 6, sixbadgeh
	ifequal 7, sevenbadgeh
	ifequal 8, eightbadgeh
	end

Monster4h:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeh
	ifequal 1, onebadgeh
	ifequal 2, twobadgeh
	ifequal 3, threebadgeh
	ifequal 4, fourbadgeh
	ifequal 5, fivebadgeh
	ifequal 6, sixbadgeh
	ifequal 7, sevenbadgeh
	ifequal 8, eightbadgeh
	end

Monster5h:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeh
	ifequal 1, onebadgeh
	ifequal 2, twobadgeh
	ifequal 3, threebadgeh
	ifequal 4, fourbadgeh
	ifequal 5, fivebadgeh
	ifequal 6, sixbadgeh
	ifequal 7, sevenbadgeh
	ifequal 8, eightbadgeh
	end
	
	
nobadgeh:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

onebadgeh:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

twobadgeh:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

threebadgeh:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

fourbadgeh:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

fivebadgeh:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

sixbadgeh:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

sevenbadgeh:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end

eightbadgeh:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsH
	end
	
A9Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1h
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL1h
	end	
	
A9Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2h
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL2h
	end	



UnlockDoorsH:
	opentext
	writetext ButtonText
	promptbutton
	appear ARUINS_POKE_BALL1h
	appear ARUINS_POKE_BALL2h		
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


A9_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp9
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp9

	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp9
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp9



	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1h, -1
	object_event  3,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2h, -1
	object_event  7,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3h, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4h, -1
	object_event  2,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5h, -1
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A9Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A9Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
