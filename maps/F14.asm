; DO A CTRL+F AND REPLACE ALL OF THE F14 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F14RUINS_MONSTER1F14
	const F14RUINS_MONSTER2F14
	const F14RUINS_MONSTER3F14
	const F14RUINS_MONSTER4F14
	const F14RUINS_MONSTER5F14
	const F14RUINS_POKE_BALL1F14
	const F14RUINS_POKE_BALL2F14


F14_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF14
	appear F14RUINS_POKE_BALL1F14
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF14
	appear F14RUINS_POKE_BALL2F14
	endcallback


BallDisappearF14:
	disappear F14RUINS_POKE_BALL1F14
	disappear F14RUINS_POKE_BALL2F14
	endcallback


RandomStairWarpF14:
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
	
Monster1F14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF14
	ifequal 1, onebadgeF14
	ifequal 2, twobadgeF14
	ifequal 3, threebadgeF14
	ifequal 4, fourbadgeF14
	ifequal 5, fivebadgeF14
	ifequal 6, sixbadgeF14
	ifequal 7, sevenbadgeF14
	ifequal 8, eightbadgeF14
	end
	
Monster2F14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF14
	ifequal 1, onebadgeF14
	ifequal 2, twobadgeF14
	ifequal 3, threebadgeF14
	ifequal 4, fourbadgeF14
	ifequal 5, fivebadgeF14
	ifequal 6, sixbadgeF14
	ifequal 7, sevenbadgeF14
	ifequal 8, eightbadgeF14
	end

Monster3F14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF14
	ifequal 1, onebadgeF14
	ifequal 2, twobadgeF14
	ifequal 3, threebadgeF14
	ifequal 4, fourbadgeF14
	ifequal 5, fivebadgeF14
	ifequal 6, sixbadgeF14
	ifequal 7, sevenbadgeF14
	ifequal 8, eightbadgeF14
	end

Monster4F14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF14
	ifequal 1, onebadgeF14
	ifequal 2, twobadgeF14
	ifequal 3, threebadgeF14
	ifequal 4, fourbadgeF14
	ifequal 5, fivebadgeF14
	ifequal 6, sixbadgeF14
	ifequal 7, sevenbadgeF14
	ifequal 8, eightbadgeF14
	end

Monster5F14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF14
	ifequal 1, onebadgeF14
	ifequal 2, twobadgeF14
	ifequal 3, threebadgeF14
	ifequal 4, fourbadgeF14
	ifequal 5, fivebadgeF14
	ifequal 6, sixbadgeF14
	ifequal 7, sevenbadgeF14
	ifequal 8, eightbadgeF14
	end


nobadgeF14:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

onebadgeF14:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

twobadgeF14:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

threebadgeF14:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

fourbadgeF14:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

fivebadgeF14:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

sixbadgeF14:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

sevenbadgeF14:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end

eightbadgeF14:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF14
	end
	
F14Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F14RUINS_POKE_BALL1F14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F14RUINS_POKE_BALL1F14
	end	

	
F14Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F14RUINS_POKE_BALL2F14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F14RUINS_POKE_BALL2F14
	end	

UnlockDoorsF14:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F14RUINS_POKE_BALL1F14
	appear F14RUINS_POKE_BALL2F14	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


F14_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpF14
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpF14


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F14, -1
	object_event  5,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F14, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F14, -1
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F14, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F14, -1
	object_event  3,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F14Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F14Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
