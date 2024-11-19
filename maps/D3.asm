; DO A CTRL+F AND REPLACE ALL OF THE D3 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D3RUINS_MONSTER1D3
	const D3RUINS_MONSTER2D3
	const D3RUINS_MONSTER3D3
	const D3RUINS_MONSTER4D3
	const D3RUINS_MONSTER5D3
	const D3RUINS_POKE_BALL1D3
	const D3RUINS_POKE_BALL2D3


D3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD3
	appear D3RUINS_POKE_BALL1D3
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD3
	appear D3RUINS_POKE_BALL2D3
	endcallback


BallDisappearD3:
	disappear D3RUINS_POKE_BALL1D3
	disappear D3RUINS_POKE_BALL2D3
	endcallback


RandomStairWarpD3:
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
	
Monster1D3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD3
	ifequal 1, onebadgeD3
	ifequal 2, twobadgeD3
	ifequal 3, threebadgeD3
	ifequal 4, fourbadgeD3
	ifequal 5, fivebadgeD3
	ifequal 6, sixbadgeD3
	ifequal 7, sevenbadgeD3
	ifequal 8, eightbadgeD3
	end
	
Monster2D3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD3
	ifequal 1, onebadgeD3
	ifequal 2, twobadgeD3
	ifequal 3, threebadgeD3
	ifequal 4, fourbadgeD3
	ifequal 5, fivebadgeD3
	ifequal 6, sixbadgeD3
	ifequal 7, sevenbadgeD3
	ifequal 8, eightbadgeD3
	end

Monster3D3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD3
	ifequal 1, onebadgeD3
	ifequal 2, twobadgeD3
	ifequal 3, threebadgeD3
	ifequal 4, fourbadgeD3
	ifequal 5, fivebadgeD3
	ifequal 6, sixbadgeD3
	ifequal 7, sevenbadgeD3
	ifequal 8, eightbadgeD3
	end

Monster4D3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD3
	ifequal 1, onebadgeD3
	ifequal 2, twobadgeD3
	ifequal 3, threebadgeD3
	ifequal 4, fourbadgeD3
	ifequal 5, fivebadgeD3
	ifequal 6, sixbadgeD3
	ifequal 7, sevenbadgeD3
	ifequal 8, eightbadgeD3
	end

Monster5D3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD3
	ifequal 1, onebadgeD3
	ifequal 2, twobadgeD3
	ifequal 3, threebadgeD3
	ifequal 4, fourbadgeD3
	ifequal 5, fivebadgeD3
	ifequal 6, sixbadgeD3
	ifequal 7, sevenbadgeD3
	ifequal 8, eightbadgeD3
	end


nobadgeD3:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

onebadgeD3:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

twobadgeD3:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

threebadgeD3:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

fourbadgeD3:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

fivebadgeD3:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

sixbadgeD3:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

sevenbadgeD3:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end

eightbadgeD3:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD3
	end
	
D3Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D3RUINS_POKE_BALL1D3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D3RUINS_POKE_BALL1D3
	end	

	
D3Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D3RUINS_POKE_BALL2D3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D3RUINS_POKE_BALL2D3
	end	

UnlockDoorsD3:
	playsound SFX_FANFARE

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D3RUINS_POKE_BALL1D3
	appear D3RUINS_POKE_BALL2D3	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 6, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D3_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD3
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD3


	def_bg_events

	def_object_events
	object_event  1,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D3, -1
	object_event  6,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D3, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D3, -1
	object_event  4,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D3, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D3, -1
	object_event  8,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D3Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  8,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D3Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
