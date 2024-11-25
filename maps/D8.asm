; DO A CTRL+F AND REPLACE ALL OF THE D8 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D8RUINS_MONSTER1D8
	const D8RUINS_MONSTER2D8
	const D8RUINS_MONSTER3D8
	const D8RUINS_MONSTER4D8
	const D8RUINS_MONSTER5D8
	const D8RUINS_POKE_BALL1D8
	const D8RUINS_POKE_BALL2D8


D8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD8
	appear D8RUINS_POKE_BALL1D8
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD8
	appear D8RUINS_POKE_BALL2D8
	endcallback


BallDisappearD8:
	disappear D8RUINS_POKE_BALL1D8
	disappear D8RUINS_POKE_BALL2D8
	endcallback


RandomStairWarpD8:
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
	
Monster1D8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD8
	ifequal 1, onebadgeD8
	ifequal 2, twobadgeD8
	ifequal 3, threebadgeD8
	ifequal 4, fourbadgeD8
	ifequal 5, fivebadgeD8
	ifequal 6, sixbadgeD8
	ifequal 7, sevenbadgeD8
	ifequal 8, eightbadgeD8
	end
	
Monster2D8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD8
	ifequal 1, onebadgeD8
	ifequal 2, twobadgeD8
	ifequal 3, threebadgeD8
	ifequal 4, fourbadgeD8
	ifequal 5, fivebadgeD8
	ifequal 6, sixbadgeD8
	ifequal 7, sevenbadgeD8
	ifequal 8, eightbadgeD8
	end

Monster3D8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD8
	ifequal 1, onebadgeD8
	ifequal 2, twobadgeD8
	ifequal 3, threebadgeD8
	ifequal 4, fourbadgeD8
	ifequal 5, fivebadgeD8
	ifequal 6, sixbadgeD8
	ifequal 7, sevenbadgeD8
	ifequal 8, eightbadgeD8
	end

Monster4D8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD8
	ifequal 1, onebadgeD8
	ifequal 2, twobadgeD8
	ifequal 3, threebadgeD8
	ifequal 4, fourbadgeD8
	ifequal 5, fivebadgeD8
	ifequal 6, sixbadgeD8
	ifequal 7, sevenbadgeD8
	ifequal 8, eightbadgeD8
	end

Monster5D8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD8
	ifequal 1, onebadgeD8
	ifequal 2, twobadgeD8
	ifequal 3, threebadgeD8
	ifequal 4, fourbadgeD8
	ifequal 5, fivebadgeD8
	ifequal 6, sixbadgeD8
	ifequal 7, sevenbadgeD8
	ifequal 8, eightbadgeD8
	end


nobadgeD8:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

onebadgeD8:
	RuinRandomD1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

twobadgeD8:
	RuinRandomD2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

threebadgeD8:
	RuinRandomD3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

fourbadgeD8:
	RuinRandomD4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

fivebadgeD8:
	RuinRandomD5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

sixbadgeD8:
	RuinRandomD6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

sevenbadgeD8:
	RuinRandomD7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end

eightbadgeD8:
	RuinRandomD8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD8
	end
	
D8Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D8RUINS_POKE_BALL1D8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D8RUINS_POKE_BALL1D8
	end	

	
D8Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D8RUINS_POKE_BALL2D8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D8RUINS_POKE_BALL2D8
	end	

UnlockDoorsD8:
	playsound SFX_2ND_PLACE 

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D8RUINS_POKE_BALL1D8
	appear D8RUINS_POKE_BALL2D8	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D8_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD8
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD8


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D8, -1
	object_event  6,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D8, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D8, -1
	object_event  3,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D8, -1
	object_event  5,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D8, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D8Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D8Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
