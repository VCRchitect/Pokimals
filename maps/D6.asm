; DO A CTRL+F AND REPLACE ALL OF THE D6 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D6RUINS_MONSTER1D6
	const D6RUINS_MONSTER2D6
	const D6RUINS_MONSTER3D6
	const D6RUINS_MONSTER4D6
	const D6RUINS_MONSTER5D6
	const D6RUINS_POKE_BALL1D6
	const D6RUINS_POKE_BALL2D6


D6_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD6
	appear D6RUINS_POKE_BALL1D6
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD6
	appear D6RUINS_POKE_BALL2D6
	endcallback


BallDisappearD6:
	disappear D6RUINS_POKE_BALL1D6
	disappear D6RUINS_POKE_BALL2D6
	endcallback


RandomStairWarpD6:
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
	
Monster1D6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD6
	ifequal 1, onebadgeD6
	ifequal 2, twobadgeD6
	ifequal 3, threebadgeD6
	ifequal 4, fourbadgeD6
	ifequal 5, fivebadgeD6
	ifequal 6, sixbadgeD6
	ifequal 7, sevenbadgeD6
	ifequal 8, eightbadgeD6
	end
	
Monster2D6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD6
	ifequal 1, onebadgeD6
	ifequal 2, twobadgeD6
	ifequal 3, threebadgeD6
	ifequal 4, fourbadgeD6
	ifequal 5, fivebadgeD6
	ifequal 6, sixbadgeD6
	ifequal 7, sevenbadgeD6
	ifequal 8, eightbadgeD6
	end

Monster3D6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD6
	ifequal 1, onebadgeD6
	ifequal 2, twobadgeD6
	ifequal 3, threebadgeD6
	ifequal 4, fourbadgeD6
	ifequal 5, fivebadgeD6
	ifequal 6, sixbadgeD6
	ifequal 7, sevenbadgeD6
	ifequal 8, eightbadgeD6
	end

Monster4D6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD6
	ifequal 1, onebadgeD6
	ifequal 2, twobadgeD6
	ifequal 3, threebadgeD6
	ifequal 4, fourbadgeD6
	ifequal 5, fivebadgeD6
	ifequal 6, sixbadgeD6
	ifequal 7, sevenbadgeD6
	ifequal 8, eightbadgeD6
	end

Monster5D6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD6
	ifequal 1, onebadgeD6
	ifequal 2, twobadgeD6
	ifequal 3, threebadgeD6
	ifequal 4, fourbadgeD6
	ifequal 5, fivebadgeD6
	ifequal 6, sixbadgeD6
	ifequal 7, sevenbadgeD6
	ifequal 8, eightbadgeD6
	end


nobadgeD6:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

onebadgeD6:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

twobadgeD6:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

threebadgeD6:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

fourbadgeD6:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

fivebadgeD6:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

sixbadgeD6:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

sevenbadgeD6:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end

eightbadgeD6:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD6
	end
	
D6Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D6RUINS_POKE_BALL1D6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D6RUINS_POKE_BALL1D6
	end	

	
D6Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D6RUINS_POKE_BALL2D6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D6RUINS_POKE_BALL2D6
	end	

UnlockDoorsD6:
	playsound SFX_FANFARE

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D6RUINS_POKE_BALL1D6
	appear D6RUINS_POKE_BALL2D6	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D6_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD6
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD6


	def_bg_events

	def_object_events
	object_event  1,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D6, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D6, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D6, -1
	object_event  7,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D6, -1
	object_event  2,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D6, -1
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D6Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D6Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
