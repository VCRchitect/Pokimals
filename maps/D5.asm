; DO A CTRL+F AND REPLACE ALL OF THE D5 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D5RUINS_MONSTER1D5
	const D5RUINS_MONSTER2D5
	const D5RUINS_MONSTER3D5
	const D5RUINS_MONSTER4D5
	const D5RUINS_MONSTER5D5
	const D5RUINS_POKE_BALL1D5
	const D5RUINS_POKE_BALL2D5


D5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD5
	appear D5RUINS_POKE_BALL1D5
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD5
	appear D5RUINS_POKE_BALL2D5
	endcallback


BallDisappearD5:
	disappear D5RUINS_POKE_BALL1D5
	disappear D5RUINS_POKE_BALL2D5
	endcallback


RandomStairWarpD5:
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
	
Monster1D5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD5
	ifequal 1, onebadgeD5
	ifequal 2, twobadgeD5
	ifequal 3, threebadgeD5
	ifequal 4, fourbadgeD5
	ifequal 5, fivebadgeD5
	ifequal 6, sixbadgeD5
	ifequal 7, sevenbadgeD5
	ifequal 8, eightbadgeD5
	end
	
Monster2D5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD5
	ifequal 1, onebadgeD5
	ifequal 2, twobadgeD5
	ifequal 3, threebadgeD5
	ifequal 4, fourbadgeD5
	ifequal 5, fivebadgeD5
	ifequal 6, sixbadgeD5
	ifequal 7, sevenbadgeD5
	ifequal 8, eightbadgeD5
	end

Monster3D5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD5
	ifequal 1, onebadgeD5
	ifequal 2, twobadgeD5
	ifequal 3, threebadgeD5
	ifequal 4, fourbadgeD5
	ifequal 5, fivebadgeD5
	ifequal 6, sixbadgeD5
	ifequal 7, sevenbadgeD5
	ifequal 8, eightbadgeD5
	end

Monster4D5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD5
	ifequal 1, onebadgeD5
	ifequal 2, twobadgeD5
	ifequal 3, threebadgeD5
	ifequal 4, fourbadgeD5
	ifequal 5, fivebadgeD5
	ifequal 6, sixbadgeD5
	ifequal 7, sevenbadgeD5
	ifequal 8, eightbadgeD5
	end

Monster5D5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD5
	ifequal 1, onebadgeD5
	ifequal 2, twobadgeD5
	ifequal 3, threebadgeD5
	ifequal 4, fourbadgeD5
	ifequal 5, fivebadgeD5
	ifequal 6, sixbadgeD5
	ifequal 7, sevenbadgeD5
	ifequal 8, eightbadgeD5
	end


nobadgeD5:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

onebadgeD5:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

twobadgeD5:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

threebadgeD5:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

fourbadgeD5:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

fivebadgeD5:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

sixbadgeD5:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

sevenbadgeD5:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end

eightbadgeD5:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD5
	end
	
D5Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D5RUINS_POKE_BALL1D5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D5RUINS_POKE_BALL1D5
	end	

	
D5Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D5RUINS_POKE_BALL2D5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D5RUINS_POKE_BALL2D5
	end	

UnlockDoorsD5:
	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D5RUINS_POKE_BALL1D5
	appear D5RUINS_POKE_BALL2D5	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D5_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD5
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD5


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D5, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D5, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D5, -1
	object_event  1,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D5, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D5, -1
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D5Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D5Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
