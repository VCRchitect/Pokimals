; DO A CTRL+F AND REPLACE ALL OF THE F13 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F13RUINS_MONSTER1F13
	const F13RUINS_MONSTER2F13
	const F13RUINS_MONSTER3F13
	const F13RUINS_MONSTER4F13
	const F13RUINS_MONSTER5F13
	const F13RUINS_POKE_BALL1F13
	const F13RUINS_POKE_BALL2F13


F13_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF13
	appear F13RUINS_POKE_BALL1F13
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF13
	appear F13RUINS_POKE_BALL2F13
	endcallback


BallDisappearF13:
	disappear F13RUINS_POKE_BALL1F13
	disappear F13RUINS_POKE_BALL2F13
	endcallback


RandomStairWarpF13:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperF
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp F10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp FPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1F13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF13
	ifequal 1, onebadgeF13
	ifequal 2, twobadgeF13
	ifequal 3, threebadgeF13
	ifequal 4, fourbadgeF13
	ifequal 5, fivebadgeF13
	ifequal 6, sixbadgeF13
	ifequal 7, sevenbadgeF13
	ifequal 8, eightbadgeF13
	end
	
Monster2F13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF13
	ifequal 1, onebadgeF13
	ifequal 2, twobadgeF13
	ifequal 3, threebadgeF13
	ifequal 4, fourbadgeF13
	ifequal 5, fivebadgeF13
	ifequal 6, sixbadgeF13
	ifequal 7, sevenbadgeF13
	ifequal 8, eightbadgeF13
	end

Monster3F13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF13
	ifequal 1, onebadgeF13
	ifequal 2, twobadgeF13
	ifequal 3, threebadgeF13
	ifequal 4, fourbadgeF13
	ifequal 5, fivebadgeF13
	ifequal 6, sixbadgeF13
	ifequal 7, sevenbadgeF13
	ifequal 8, eightbadgeF13
	end

Monster4F13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF13
	ifequal 1, onebadgeF13
	ifequal 2, twobadgeF13
	ifequal 3, threebadgeF13
	ifequal 4, fourbadgeF13
	ifequal 5, fivebadgeF13
	ifequal 6, sixbadgeF13
	ifequal 7, sevenbadgeF13
	ifequal 8, eightbadgeF13
	end

Monster5F13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF13
	ifequal 1, onebadgeF13
	ifequal 2, twobadgeF13
	ifequal 3, threebadgeF13
	ifequal 4, fourbadgeF13
	ifequal 5, fivebadgeF13
	ifequal 6, sixbadgeF13
	ifequal 7, sevenbadgeF13
	ifequal 8, eightbadgeF13
	end


nobadgeF13:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

onebadgeF13:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

twobadgeF13:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

threebadgeF13:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

fourbadgeF13:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

fivebadgeF13:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

sixbadgeF13:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

sevenbadgeF13:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end

eightbadgeF13:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF13
	end
	
F13Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F13RUINS_POKE_BALL1F13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F13RUINS_POKE_BALL1F13
	end	

	
F13Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F13RUINS_POKE_BALL2F13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F13RUINS_POKE_BALL2F13
	end	

UnlockDoorsF13:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F13RUINS_POKE_BALL1F13
	appear F13RUINS_POKE_BALL2F13	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


F13_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF13
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF13


	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F13, -1
	object_event  9,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F13, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F13, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F13, -1
	object_event  4,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F13, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F13Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F13Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
