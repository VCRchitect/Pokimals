; DO A CTRL+F AND REPLACE ALL OF THE F11 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F11RUINS_MONSTER1F11
	const F11RUINS_MONSTER2F11
	const F11RUINS_MONSTER3F11
	const F11RUINS_MONSTER4F11
	const F11RUINS_MONSTER5F11
	const F11RUINS_POKE_BALL1F11
	const F11RUINS_POKE_BALL2F11


F11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF11
	appear F11RUINS_POKE_BALL1F11
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF11
	appear F11RUINS_POKE_BALL2F11
	endcallback


BallDisappearF11:
	disappear F11RUINS_POKE_BALL1F11
	disappear F11RUINS_POKE_BALL2F11
	endcallback


RandomStairWarpF11:
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
	
Monster1F11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF11
	ifequal 1, onebadgeF11
	ifequal 2, twobadgeF11
	ifequal 3, threebadgeF11
	ifequal 4, fourbadgeF11
	ifequal 5, fivebadgeF11
	ifequal 6, sixbadgeF11
	ifequal 7, sevenbadgeF11
	ifequal 8, eightbadgeF11
	end
	
Monster2F11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF11
	ifequal 1, onebadgeF11
	ifequal 2, twobadgeF11
	ifequal 3, threebadgeF11
	ifequal 4, fourbadgeF11
	ifequal 5, fivebadgeF11
	ifequal 6, sixbadgeF11
	ifequal 7, sevenbadgeF11
	ifequal 8, eightbadgeF11
	end

Monster3F11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF11
	ifequal 1, onebadgeF11
	ifequal 2, twobadgeF11
	ifequal 3, threebadgeF11
	ifequal 4, fourbadgeF11
	ifequal 5, fivebadgeF11
	ifequal 6, sixbadgeF11
	ifequal 7, sevenbadgeF11
	ifequal 8, eightbadgeF11
	end

Monster4F11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF11
	ifequal 1, onebadgeF11
	ifequal 2, twobadgeF11
	ifequal 3, threebadgeF11
	ifequal 4, fourbadgeF11
	ifequal 5, fivebadgeF11
	ifequal 6, sixbadgeF11
	ifequal 7, sevenbadgeF11
	ifequal 8, eightbadgeF11
	end

Monster5F11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF11
	ifequal 1, onebadgeF11
	ifequal 2, twobadgeF11
	ifequal 3, threebadgeF11
	ifequal 4, fourbadgeF11
	ifequal 5, fivebadgeF11
	ifequal 6, sixbadgeF11
	ifequal 7, sevenbadgeF11
	ifequal 8, eightbadgeF11
	end


nobadgeF11:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

onebadgeF11:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

twobadgeF11:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

threebadgeF11:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

fourbadgeF11:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

fivebadgeF11:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

sixbadgeF11:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

sevenbadgeF11:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end

eightbadgeF11:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF11
	end
	
F11Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F11RUINS_POKE_BALL1F11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F11RUINS_POKE_BALL1F11
	end	

	
F11Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F11RUINS_POKE_BALL2F11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F11RUINS_POKE_BALL2F11
	end	

UnlockDoorsF11:
	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F11RUINS_POKE_BALL1F11
	appear F11RUINS_POKE_BALL2F11	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



F11_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF11
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF11


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F11, -1
	object_event  1,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F11, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F11, -1
	object_event  6,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F11, -1
	object_event  3,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F11, -1
	object_event  1,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F11Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  8,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F11Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
