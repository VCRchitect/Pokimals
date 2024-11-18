; DO A CTRL+F AND REPLACE ALL OF THE D7 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D7RUINS_MONSTER1D7
	const D7RUINS_MONSTER2D7
	const D7RUINS_MONSTER3D7
	const D7RUINS_MONSTER4D7
	const D7RUINS_MONSTER5D7
	const D7RUINS_POKE_BALL1D7
	const D7RUINS_POKE_BALL2D7


D7_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD7
	appear D7RUINS_POKE_BALL1D7
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD7
	appear D7RUINS_POKE_BALL2D7
	endcallback


BallDisappearD7:
	disappear D7RUINS_POKE_BALL1D7
	disappear D7RUINS_POKE_BALL2D7
	endcallback


RandomStairWarpD7:
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
	
Monster1D7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD7
	ifequal 1, onebadgeD7
	ifequal 2, twobadgeD7
	ifequal 3, threebadgeD7
	ifequal 4, fourbadgeD7
	ifequal 5, fivebadgeD7
	ifequal 6, sixbadgeD7
	ifequal 7, sevenbadgeD7
	ifequal 8, eightbadgeD7
	end
	
Monster2D7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD7
	ifequal 1, onebadgeD7
	ifequal 2, twobadgeD7
	ifequal 3, threebadgeD7
	ifequal 4, fourbadgeD7
	ifequal 5, fivebadgeD7
	ifequal 6, sixbadgeD7
	ifequal 7, sevenbadgeD7
	ifequal 8, eightbadgeD7
	end

Monster3D7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD7
	ifequal 1, onebadgeD7
	ifequal 2, twobadgeD7
	ifequal 3, threebadgeD7
	ifequal 4, fourbadgeD7
	ifequal 5, fivebadgeD7
	ifequal 6, sixbadgeD7
	ifequal 7, sevenbadgeD7
	ifequal 8, eightbadgeD7
	end

Monster4D7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD7
	ifequal 1, onebadgeD7
	ifequal 2, twobadgeD7
	ifequal 3, threebadgeD7
	ifequal 4, fourbadgeD7
	ifequal 5, fivebadgeD7
	ifequal 6, sixbadgeD7
	ifequal 7, sevenbadgeD7
	ifequal 8, eightbadgeD7
	end

Monster5D7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD7
	ifequal 1, onebadgeD7
	ifequal 2, twobadgeD7
	ifequal 3, threebadgeD7
	ifequal 4, fourbadgeD7
	ifequal 5, fivebadgeD7
	ifequal 6, sixbadgeD7
	ifequal 7, sevenbadgeD7
	ifequal 8, eightbadgeD7
	end


nobadgeD7:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

onebadgeD7:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

twobadgeD7:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

threebadgeD7:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

fourbadgeD7:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

fivebadgeD7:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

sixbadgeD7:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

sevenbadgeD7:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end

eightbadgeD7:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD7
	end
	
D7Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D7RUINS_POKE_BALL1D7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D7RUINS_POKE_BALL1D7
	end	

	
D7Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D7RUINS_POKE_BALL2D7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D7RUINS_POKE_BALL2D7
	end	

UnlockDoorsD7:
	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D7RUINS_POKE_BALL1D7
	appear D7RUINS_POKE_BALL2D7	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D7_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD7
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD7


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D7, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D7, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D7, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D7, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D7, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D7Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D7Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
