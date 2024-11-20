; DO A CTRL+F AND REPLACE ALL OF THE D12 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D12RUINS_MONSTER1D12
	const D12RUINS_MONSTER2D12
	const D12RUINS_MONSTER3D12
	const D12RUINS_MONSTER4D12
	const D12RUINS_MONSTER5D12
	const D12RUINS_POKE_BALL1D12
	const D12RUINS_POKE_BALL2D12


D12_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD12
	appear D12RUINS_POKE_BALL1D12
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD12
	appear D12RUINS_POKE_BALL2D12
	endcallback


BallDisappearD12:
	disappear D12RUINS_POKE_BALL1D12
	disappear D12RUINS_POKE_BALL2D12
	endcallback


RandomStairWarpD12:
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
	
Monster1D12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD12
	ifequal 1, onebadgeD12
	ifequal 2, twobadgeD12
	ifequal 3, threebadgeD12
	ifequal 4, fourbadgeD12
	ifequal 5, fivebadgeD12
	ifequal 6, sixbadgeD12
	ifequal 7, sevenbadgeD12
	ifequal 8, eightbadgeD12
	end
	
Monster2D12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD12
	ifequal 1, onebadgeD12
	ifequal 2, twobadgeD12
	ifequal 3, threebadgeD12
	ifequal 4, fourbadgeD12
	ifequal 5, fivebadgeD12
	ifequal 6, sixbadgeD12
	ifequal 7, sevenbadgeD12
	ifequal 8, eightbadgeD12
	end

Monster3D12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD12
	ifequal 1, onebadgeD12
	ifequal 2, twobadgeD12
	ifequal 3, threebadgeD12
	ifequal 4, fourbadgeD12
	ifequal 5, fivebadgeD12
	ifequal 6, sixbadgeD12
	ifequal 7, sevenbadgeD12
	ifequal 8, eightbadgeD12
	end

Monster4D12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD12
	ifequal 1, onebadgeD12
	ifequal 2, twobadgeD12
	ifequal 3, threebadgeD12
	ifequal 4, fourbadgeD12
	ifequal 5, fivebadgeD12
	ifequal 6, sixbadgeD12
	ifequal 7, sevenbadgeD12
	ifequal 8, eightbadgeD12
	end

Monster5D12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD12
	ifequal 1, onebadgeD12
	ifequal 2, twobadgeD12
	ifequal 3, threebadgeD12
	ifequal 4, fourbadgeD12
	ifequal 5, fivebadgeD12
	ifequal 6, sixbadgeD12
	ifequal 7, sevenbadgeD12
	ifequal 8, eightbadgeD12
	end


nobadgeD12:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

onebadgeD12:
	RuinRandomD1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

twobadgeD12:
	RuinRandomD2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

threebadgeD12:
	RuinRandomD3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

fourbadgeD12:
	RuinRandomD4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

fivebadgeD12:
	RuinRandomD5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

sixbadgeD12:
	RuinRandomD6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

sevenbadgeD12:
	RuinRandomD7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end

eightbadgeD12:
	RuinRandomD8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD12
	end
	
D12Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D12RUINS_POKE_BALL1D12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D12RUINS_POKE_BALL1D12
	end	

	
D12Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D12RUINS_POKE_BALL2D12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D12RUINS_POKE_BALL2D12
	end	

UnlockDoorsD12:
	playsound SFX_2ND_PLACE 

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D12RUINS_POKE_BALL1D12
	appear D12RUINS_POKE_BALL2D12	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D12_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD12
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD12


	def_bg_events

	def_object_events
	object_event  2,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D12, -1
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D12, -1
	object_event  7,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D12, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D12, -1
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D12, -1
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D12Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D12Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
