; DO A CTRL+F AND REPLACE ALL OF THE F7 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F7RUINS_MONSTER1F7
	const F7RUINS_MONSTER2F7
	const F7RUINS_MONSTER3F7
	const F7RUINS_MONSTER4F7
	const F7RUINS_MONSTER5F7
	const F7RUINS_POKE_BALL1F7
	const F7RUINS_POKE_BALL2F7


F7_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF7
	appear F7RUINS_POKE_BALL1F7
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF7
	appear F7RUINS_POKE_BALL2F7
	endcallback


BallDisappearF7:
	disappear F7RUINS_POKE_BALL1F7
	disappear F7RUINS_POKE_BALL2F7
	endcallback


RandomStairWarpF7:
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
	
Monster1F7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF7
	ifequal 1, onebadgeF7
	ifequal 2, twobadgeF7
	ifequal 3, threebadgeF7
	ifequal 4, fourbadgeF7
	ifequal 5, fivebadgeF7
	ifequal 6, sixbadgeF7
	ifequal 7, sevenbadgeF7
	ifequal 8, eightbadgeF7
	end
	
Monster2F7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF7
	ifequal 1, onebadgeF7
	ifequal 2, twobadgeF7
	ifequal 3, threebadgeF7
	ifequal 4, fourbadgeF7
	ifequal 5, fivebadgeF7
	ifequal 6, sixbadgeF7
	ifequal 7, sevenbadgeF7
	ifequal 8, eightbadgeF7
	end

Monster3F7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF7
	ifequal 1, onebadgeF7
	ifequal 2, twobadgeF7
	ifequal 3, threebadgeF7
	ifequal 4, fourbadgeF7
	ifequal 5, fivebadgeF7
	ifequal 6, sixbadgeF7
	ifequal 7, sevenbadgeF7
	ifequal 8, eightbadgeF7
	end

Monster4F7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF7
	ifequal 1, onebadgeF7
	ifequal 2, twobadgeF7
	ifequal 3, threebadgeF7
	ifequal 4, fourbadgeF7
	ifequal 5, fivebadgeF7
	ifequal 6, sixbadgeF7
	ifequal 7, sevenbadgeF7
	ifequal 8, eightbadgeF7
	end

Monster5F7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF7
	ifequal 1, onebadgeF7
	ifequal 2, twobadgeF7
	ifequal 3, threebadgeF7
	ifequal 4, fourbadgeF7
	ifequal 5, fivebadgeF7
	ifequal 6, sixbadgeF7
	ifequal 7, sevenbadgeF7
	ifequal 8, eightbadgeF7
	end


nobadgeF7:
	RuinRandomFBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

onebadgeF7:
	RuinRandomF1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

twobadgeF7:
	RuinRandomF2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

threebadgeF7:
	RuinRandomF3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

fourbadgeF7:
	RuinRandomF4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

fivebadgeF7:
	RuinRandomF5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

sixbadgeF7:
	RuinRandomF6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

sevenbadgeF7:
	RuinRandomF7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end

eightbadgeF7:
	RuinRandomF8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF7
	end
	
F7Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F7RUINS_POKE_BALL1F7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F7RUINS_POKE_BALL1F7
	end	

	
F7Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F7RUINS_POKE_BALL2F7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F7RUINS_POKE_BALL2F7
	end	

UnlockDoorsF7:
	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F7RUINS_POKE_BALL1F7
	appear F7RUINS_POKE_BALL2F7	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



F7_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpF7
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpF7


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F7, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F7, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F7, -1
	object_event  8,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F7, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F7, -1
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F7Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F7Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
