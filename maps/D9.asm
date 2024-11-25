; DO A CTRL+F AND REPLACE ALL OF THE D9 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D9RUINS_MONSTER1D9
	const D9RUINS_MONSTER2D9
	const D9RUINS_MONSTER3D9
	const D9RUINS_MONSTER4D9
	const D9RUINS_MONSTER5D9
	const D9RUINS_POKE_BALL1D9
	const D9RUINS_POKE_BALL2D9


D9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD9
	appear D9RUINS_POKE_BALL1D9
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD9
	appear D9RUINS_POKE_BALL2D9
	endcallback


BallDisappearD9:
	disappear D9RUINS_POKE_BALL1D9
	disappear D9RUINS_POKE_BALL2D9
	endcallback


RandomStairWarpD9:
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
	
Monster1D9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD9
	ifequal 1, onebadgeD9
	ifequal 2, twobadgeD9
	ifequal 3, threebadgeD9
	ifequal 4, fourbadgeD9
	ifequal 5, fivebadgeD9
	ifequal 6, sixbadgeD9
	ifequal 7, sevenbadgeD9
	ifequal 8, eightbadgeD9
	end
	
Monster2D9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD9
	ifequal 1, onebadgeD9
	ifequal 2, twobadgeD9
	ifequal 3, threebadgeD9
	ifequal 4, fourbadgeD9
	ifequal 5, fivebadgeD9
	ifequal 6, sixbadgeD9
	ifequal 7, sevenbadgeD9
	ifequal 8, eightbadgeD9
	end

Monster3D9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD9
	ifequal 1, onebadgeD9
	ifequal 2, twobadgeD9
	ifequal 3, threebadgeD9
	ifequal 4, fourbadgeD9
	ifequal 5, fivebadgeD9
	ifequal 6, sixbadgeD9
	ifequal 7, sevenbadgeD9
	ifequal 8, eightbadgeD9
	end

Monster4D9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD9
	ifequal 1, onebadgeD9
	ifequal 2, twobadgeD9
	ifequal 3, threebadgeD9
	ifequal 4, fourbadgeD9
	ifequal 5, fivebadgeD9
	ifequal 6, sixbadgeD9
	ifequal 7, sevenbadgeD9
	ifequal 8, eightbadgeD9
	end

Monster5D9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD9
	ifequal 1, onebadgeD9
	ifequal 2, twobadgeD9
	ifequal 3, threebadgeD9
	ifequal 4, fourbadgeD9
	ifequal 5, fivebadgeD9
	ifequal 6, sixbadgeD9
	ifequal 7, sevenbadgeD9
	ifequal 8, eightbadgeD9
	end


nobadgeD9:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

onebadgeD9:
	RuinRandomD1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

twobadgeD9:
	RuinRandomD2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

threebadgeD9:
	RuinRandomD3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

fourbadgeD9:
	RuinRandomD4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

fivebadgeD9:
	RuinRandomD5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

sixbadgeD9:
	RuinRandomD6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

sevenbadgeD9:
	RuinRandomD7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end

eightbadgeD9:
	RuinRandomD8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD9
	end
	
D9Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D9RUINS_POKE_BALL1D9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D9RUINS_POKE_BALL1D9
	end	

	
D9Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D9RUINS_POKE_BALL2D9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D9RUINS_POKE_BALL2D9
	end	

UnlockDoorsD9:
	playsound SFX_2ND_PLACE 

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D9RUINS_POKE_BALL1D9
	appear D9RUINS_POKE_BALL2D9	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D9_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD9
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD9


	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D9, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D9, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D9, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D9, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D9, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D9Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D9Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
