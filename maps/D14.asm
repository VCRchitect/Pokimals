; DO A CTRL+F AND REPLACE ALL OF THE D14 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D14RUINS_MONSTER1D14
	const D14RUINS_MONSTER2D14
	const D14RUINS_MONSTER3D14
	const D14RUINS_MONSTER4D14
	const D14RUINS_MONSTER5D14
	const D14RUINS_POKE_BALL1D14
	const D14RUINS_POKE_BALL2D14


D14_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD14
	appear D14RUINS_POKE_BALL1D14
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD14
	appear D14RUINS_POKE_BALL2D14
	endcallback


BallDisappearD14:
	disappear D14RUINS_POKE_BALL1D14
	disappear D14RUINS_POKE_BALL2D14
	endcallback


RandomStairWarpD14:
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
	
Monster1D14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD14
	ifequal 1, onebadgeD14
	ifequal 2, twobadgeD14
	ifequal 3, threebadgeD14
	ifequal 4, fourbadgeD14
	ifequal 5, fivebadgeD14
	ifequal 6, sixbadgeD14
	ifequal 7, sevenbadgeD14
	ifequal 8, eightbadgeD14
	end
	
Monster2D14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD14
	ifequal 1, onebadgeD14
	ifequal 2, twobadgeD14
	ifequal 3, threebadgeD14
	ifequal 4, fourbadgeD14
	ifequal 5, fivebadgeD14
	ifequal 6, sixbadgeD14
	ifequal 7, sevenbadgeD14
	ifequal 8, eightbadgeD14
	end

Monster3D14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD14
	ifequal 1, onebadgeD14
	ifequal 2, twobadgeD14
	ifequal 3, threebadgeD14
	ifequal 4, fourbadgeD14
	ifequal 5, fivebadgeD14
	ifequal 6, sixbadgeD14
	ifequal 7, sevenbadgeD14
	ifequal 8, eightbadgeD14
	end

Monster4D14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD14
	ifequal 1, onebadgeD14
	ifequal 2, twobadgeD14
	ifequal 3, threebadgeD14
	ifequal 4, fourbadgeD14
	ifequal 5, fivebadgeD14
	ifequal 6, sixbadgeD14
	ifequal 7, sevenbadgeD14
	ifequal 8, eightbadgeD14
	end

Monster5D14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD14
	ifequal 1, onebadgeD14
	ifequal 2, twobadgeD14
	ifequal 3, threebadgeD14
	ifequal 4, fourbadgeD14
	ifequal 5, fivebadgeD14
	ifequal 6, sixbadgeD14
	ifequal 7, sevenbadgeD14
	ifequal 8, eightbadgeD14
	end


nobadgeD14:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

onebadgeD14:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

twobadgeD14:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

threebadgeD14:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

fourbadgeD14:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

fivebadgeD14:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

sixbadgeD14:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

sevenbadgeD14:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end

eightbadgeD14:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD14
	end
	
D14Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D14RUINS_POKE_BALL1D14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D14RUINS_POKE_BALL1D14
	end	

	
D14Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D14RUINS_POKE_BALL2D14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D14RUINS_POKE_BALL2D14
	end	

UnlockDoorsD14:
	playsound SFX_FANFARE

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D14RUINS_POKE_BALL1D14
	appear D14RUINS_POKE_BALL2D14	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D14_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpD14
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpD14


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D14, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D14, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D14, -1
	object_event  4,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D14, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D14, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D14Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D14Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
