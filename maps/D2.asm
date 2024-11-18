; DO A CTRL+F AND REPLACE ALL OF THE D2 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D2RUINS_MONSTER1D2
	const D2RUINS_MONSTER2D2
	const D2RUINS_MONSTER3D2
	const D2RUINS_MONSTER4D2
	const D2RUINS_MONSTER5D2
	const D2RUINS_POKE_BALL1D2
	const D2RUINS_POKE_BALL2D2


D2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD2
	appear D2RUINS_POKE_BALL1D2
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD2
	appear D2RUINS_POKE_BALL2D2
	endcallback


BallDisappearD2:
	disappear D2RUINS_POKE_BALL1D2
	disappear D2RUINS_POKE_BALL2D2
	endcallback


RandomStairWarpD2:
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
	
Monster1D2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD2
	ifequal 1, onebadgeD2
	ifequal 2, twobadgeD2
	ifequal 3, threebadgeD2
	ifequal 4, fourbadgeD2
	ifequal 5, fivebadgeD2
	ifequal 6, sixbadgeD2
	ifequal 7, sevenbadgeD2
	ifequal 8, eightbadgeD2
	end
	
Monster2D2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD2
	ifequal 1, onebadgeD2
	ifequal 2, twobadgeD2
	ifequal 3, threebadgeD2
	ifequal 4, fourbadgeD2
	ifequal 5, fivebadgeD2
	ifequal 6, sixbadgeD2
	ifequal 7, sevenbadgeD2
	ifequal 8, eightbadgeD2
	end

Monster3D2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD2
	ifequal 1, onebadgeD2
	ifequal 2, twobadgeD2
	ifequal 3, threebadgeD2
	ifequal 4, fourbadgeD2
	ifequal 5, fivebadgeD2
	ifequal 6, sixbadgeD2
	ifequal 7, sevenbadgeD2
	ifequal 8, eightbadgeD2
	end

Monster4D2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD2
	ifequal 1, onebadgeD2
	ifequal 2, twobadgeD2
	ifequal 3, threebadgeD2
	ifequal 4, fourbadgeD2
	ifequal 5, fivebadgeD2
	ifequal 6, sixbadgeD2
	ifequal 7, sevenbadgeD2
	ifequal 8, eightbadgeD2
	end

Monster5D2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD2
	ifequal 1, onebadgeD2
	ifequal 2, twobadgeD2
	ifequal 3, threebadgeD2
	ifequal 4, fourbadgeD2
	ifequal 5, fivebadgeD2
	ifequal 6, sixbadgeD2
	ifequal 7, sevenbadgeD2
	ifequal 8, eightbadgeD2
	end


nobadgeD2:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

onebadgeD2:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

twobadgeD2:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

threebadgeD2:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

fourbadgeD2:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

fivebadgeD2:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

sixbadgeD2:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

sevenbadgeD2:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end

eightbadgeD2:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD2
	end
	
D2Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D2RUINS_POKE_BALL1D2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D2RUINS_POKE_BALL1D2
	end	

	
D2Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D2RUINS_POKE_BALL2D2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D2RUINS_POKE_BALL2D2
	end	

UnlockDoorsD2:
	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D2RUINS_POKE_BALL1D2
	appear D2RUINS_POKE_BALL2D2	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end

DButtonText:
	text "Room Clear!"
	done

D2_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD2
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD2


	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D2, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D2, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D2, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D2, -1
	object_event  4,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D2, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D2Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D2Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
