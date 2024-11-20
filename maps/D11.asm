; DO A CTRL+F AND REPLACE ALL OF THE D11 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D11RUINS_MONSTER1D11
	const D11RUINS_MONSTER2D11
	const D11RUINS_MONSTER3D11
	const D11RUINS_MONSTER4D11
	const D11RUINS_MONSTER5D11
	const D11RUINS_POKE_BALL1D11
	const D11RUINS_POKE_BALL2D11


D11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD11
	appear D11RUINS_POKE_BALL1D11
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD11
	appear D11RUINS_POKE_BALL2D11
	endcallback


BallDisappearD11:
	disappear D11RUINS_POKE_BALL1D11
	disappear D11RUINS_POKE_BALL2D11
	endcallback


RandomStairWarpD11:
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
	
Monster1D11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD11
	ifequal 1, onebadgeD11
	ifequal 2, twobadgeD11
	ifequal 3, threebadgeD11
	ifequal 4, fourbadgeD11
	ifequal 5, fivebadgeD11
	ifequal 6, sixbadgeD11
	ifequal 7, sevenbadgeD11
	ifequal 8, eightbadgeD11
	end
	
Monster2D11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD11
	ifequal 1, onebadgeD11
	ifequal 2, twobadgeD11
	ifequal 3, threebadgeD11
	ifequal 4, fourbadgeD11
	ifequal 5, fivebadgeD11
	ifequal 6, sixbadgeD11
	ifequal 7, sevenbadgeD11
	ifequal 8, eightbadgeD11
	end

Monster3D11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD11
	ifequal 1, onebadgeD11
	ifequal 2, twobadgeD11
	ifequal 3, threebadgeD11
	ifequal 4, fourbadgeD11
	ifequal 5, fivebadgeD11
	ifequal 6, sixbadgeD11
	ifequal 7, sevenbadgeD11
	ifequal 8, eightbadgeD11
	end

Monster4D11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD11
	ifequal 1, onebadgeD11
	ifequal 2, twobadgeD11
	ifequal 3, threebadgeD11
	ifequal 4, fourbadgeD11
	ifequal 5, fivebadgeD11
	ifequal 6, sixbadgeD11
	ifequal 7, sevenbadgeD11
	ifequal 8, eightbadgeD11
	end

Monster5D11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD11
	ifequal 1, onebadgeD11
	ifequal 2, twobadgeD11
	ifequal 3, threebadgeD11
	ifequal 4, fourbadgeD11
	ifequal 5, fivebadgeD11
	ifequal 6, sixbadgeD11
	ifequal 7, sevenbadgeD11
	ifequal 8, eightbadgeD11
	end


nobadgeD11:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

onebadgeD11:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

twobadgeD11:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

threebadgeD11:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

fourbadgeD11:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

fivebadgeD11:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

sixbadgeD11:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

sevenbadgeD11:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end

eightbadgeD11:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD11
	end
	
D11Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D11RUINS_POKE_BALL1D11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D11RUINS_POKE_BALL1D11
	end	

	
D11Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D11RUINS_POKE_BALL2D11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D11RUINS_POKE_BALL2D11
	end	

UnlockDoorsD11:
	playsound SFX_2ND_PLACE 

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D11RUINS_POKE_BALL1D11
	appear D11RUINS_POKE_BALL2D11	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D11_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD11
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD11


	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D11, -1
	object_event  8,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D11, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D11, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D11, -1
	object_event  1,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D11, -1
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D11Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D11Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
