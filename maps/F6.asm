; DO A CTRL+F AND REPLACE ALL OF THE F6 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F6RUINS_MONSTER1F6
	const F6RUINS_MONSTER2F6
	const F6RUINS_MONSTER3F6
	const F6RUINS_MONSTER4F6
	const F6RUINS_MONSTER5F6
	const F6RUINS_POKE_BALL1F6
	const F6RUINS_POKE_BALL2F6


F6_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF6
	appear F6RUINS_POKE_BALL1F6
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF6
	appear F6RUINS_POKE_BALL2F6
	endcallback


BallDisappearF6:
	disappear F6RUINS_POKE_BALL1F6
	disappear F6RUINS_POKE_BALL2F6
	endcallback


RandomStairWarpF6:
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
	
Monster1F6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF6
	ifequal 1, onebadgeF6
	ifequal 2, twobadgeF6
	ifequal 3, threebadgeF6
	ifequal 4, fourbadgeF6
	ifequal 5, fivebadgeF6
	ifequal 6, sixbadgeF6
	ifequal 7, sevenbadgeF6
	ifequal 8, eightbadgeF6
	end
	
Monster2F6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF6
	ifequal 1, onebadgeF6
	ifequal 2, twobadgeF6
	ifequal 3, threebadgeF6
	ifequal 4, fourbadgeF6
	ifequal 5, fivebadgeF6
	ifequal 6, sixbadgeF6
	ifequal 7, sevenbadgeF6
	ifequal 8, eightbadgeF6
	end

Monster3F6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF6
	ifequal 1, onebadgeF6
	ifequal 2, twobadgeF6
	ifequal 3, threebadgeF6
	ifequal 4, fourbadgeF6
	ifequal 5, fivebadgeF6
	ifequal 6, sixbadgeF6
	ifequal 7, sevenbadgeF6
	ifequal 8, eightbadgeF6
	end

Monster4F6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF6
	ifequal 1, onebadgeF6
	ifequal 2, twobadgeF6
	ifequal 3, threebadgeF6
	ifequal 4, fourbadgeF6
	ifequal 5, fivebadgeF6
	ifequal 6, sixbadgeF6
	ifequal 7, sevenbadgeF6
	ifequal 8, eightbadgeF6
	end

Monster5F6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF6
	ifequal 1, onebadgeF6
	ifequal 2, twobadgeF6
	ifequal 3, threebadgeF6
	ifequal 4, fourbadgeF6
	ifequal 5, fivebadgeF6
	ifequal 6, sixbadgeF6
	ifequal 7, sevenbadgeF6
	ifequal 8, eightbadgeF6
	end


nobadgeF6:
	RuinRandomFBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

onebadgeF6:
	RuinRandomF1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

twobadgeF6:
	RuinRandomF2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

threebadgeF6:
	RuinRandomF3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

fourbadgeF6:
	RuinRandomF4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

fivebadgeF6:
	RuinRandomF5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

sixbadgeF6:
	RuinRandomF6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

sevenbadgeF6:
	RuinRandomF7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end

eightbadgeF6:
	RuinRandomF8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF6
	end
	
F6Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F6RUINS_POKE_BALL1F6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F6RUINS_POKE_BALL1F6
	end	

	
F6Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F6RUINS_POKE_BALL2F6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F6RUINS_POKE_BALL2F6
	end	

UnlockDoorsF6:
	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F6RUINS_POKE_BALL1F6
	appear F6RUINS_POKE_BALL2F6	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


F6_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF6
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF6


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F6, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F6, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F6, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F6, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F6, -1
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F6Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F6Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
