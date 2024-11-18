; DO A CTRL+F AND REPLACE ALL OF THE D13 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D13RUINS_MONSTER1D13
	const D13RUINS_MONSTER2D13
	const D13RUINS_MONSTER3D13
	const D13RUINS_MONSTER4D13
	const D13RUINS_MONSTER5D13
	const D13RUINS_POKE_BALL1D13
	const D13RUINS_POKE_BALL2D13


D13_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD13
	appear D13RUINS_POKE_BALL1D13
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD13
	appear D13RUINS_POKE_BALL2D13
	endcallback


BallDisappearD13:
	disappear D13RUINS_POKE_BALL1D13
	disappear D13RUINS_POKE_BALL2D13
	endcallback


RandomStairWarpD13:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperD
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp D10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp DPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1D13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD13
	ifequal 1, onebadgeD13
	ifequal 2, twobadgeD13
	ifequal 3, threebadgeD13
	ifequal 4, fourbadgeD13
	ifequal 5, fivebadgeD13
	ifequal 6, sixbadgeD13
	ifequal 7, sevenbadgeD13
	ifequal 8, eightbadgeD13
	end
	
Monster2D13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD13
	ifequal 1, onebadgeD13
	ifequal 2, twobadgeD13
	ifequal 3, threebadgeD13
	ifequal 4, fourbadgeD13
	ifequal 5, fivebadgeD13
	ifequal 6, sixbadgeD13
	ifequal 7, sevenbadgeD13
	ifequal 8, eightbadgeD13
	end

Monster3D13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD13
	ifequal 1, onebadgeD13
	ifequal 2, twobadgeD13
	ifequal 3, threebadgeD13
	ifequal 4, fourbadgeD13
	ifequal 5, fivebadgeD13
	ifequal 6, sixbadgeD13
	ifequal 7, sevenbadgeD13
	ifequal 8, eightbadgeD13
	end

Monster4D13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD13
	ifequal 1, onebadgeD13
	ifequal 2, twobadgeD13
	ifequal 3, threebadgeD13
	ifequal 4, fourbadgeD13
	ifequal 5, fivebadgeD13
	ifequal 6, sixbadgeD13
	ifequal 7, sevenbadgeD13
	ifequal 8, eightbadgeD13
	end

Monster5D13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD13
	ifequal 1, onebadgeD13
	ifequal 2, twobadgeD13
	ifequal 3, threebadgeD13
	ifequal 4, fourbadgeD13
	ifequal 5, fivebadgeD13
	ifequal 6, sixbadgeD13
	ifequal 7, sevenbadgeD13
	ifequal 8, eightbadgeD13
	end


nobadgeD13:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

onebadgeD13:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

twobadgeD13:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

threebadgeD13:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

fourbadgeD13:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

fivebadgeD13:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

sixbadgeD13:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

sevenbadgeD13:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end

eightbadgeD13:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD13
	end
	
D13Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D13RUINS_POKE_BALL1D13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D13RUINS_POKE_BALL1D13
	end	

	
D13Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D13RUINS_POKE_BALL2D13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D13RUINS_POKE_BALL2D13
	end	

UnlockDoorsD13:
	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D13RUINS_POKE_BALL1D13
	appear D13RUINS_POKE_BALL2D13	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D13_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD13
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD13


	def_bg_events

	def_object_events
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D13, -1
	object_event  8,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D13, -1
	object_event  3,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D13, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D13, -1
	object_event  5,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D13, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D13Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D13Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
