; DO A CTRL+F AND REPLACE ALL OF THE D4 WITH THE ROOM NUMBER AND THE D WITH THE RUIN LETTER
	
	object_const_def
	const D4RUINS_MONSTER1D4
	const D4RUINS_MONSTER2D4
	const D4RUINS_MONSTER3D4
	const D4RUINS_MONSTER4D4
	const D4RUINS_MONSTER5D4
	const D4RUINS_POKE_BALL1D4
	const D4RUINS_POKE_BALL2D4


D4_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD4
	appear D4RUINS_POKE_BALL1D4
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearD4
	appear D4RUINS_POKE_BALL2D4
	endcallback


BallDisappearD4:
	disappear D4RUINS_POKE_BALL1D4
	disappear D4RUINS_POKE_BALL2D4
	endcallback


RandomStairWarpD4:
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
	
Monster1D4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD4
	ifequal 1, onebadgeD4
	ifequal 2, twobadgeD4
	ifequal 3, threebadgeD4
	ifequal 4, fourbadgeD4
	ifequal 5, fivebadgeD4
	ifequal 6, sixbadgeD4
	ifequal 7, sevenbadgeD4
	ifequal 8, eightbadgeD4
	end
	
Monster2D4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD4
	ifequal 1, onebadgeD4
	ifequal 2, twobadgeD4
	ifequal 3, threebadgeD4
	ifequal 4, fourbadgeD4
	ifequal 5, fivebadgeD4
	ifequal 6, sixbadgeD4
	ifequal 7, sevenbadgeD4
	ifequal 8, eightbadgeD4
	end

Monster3D4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD4
	ifequal 1, onebadgeD4
	ifequal 2, twobadgeD4
	ifequal 3, threebadgeD4
	ifequal 4, fourbadgeD4
	ifequal 5, fivebadgeD4
	ifequal 6, sixbadgeD4
	ifequal 7, sevenbadgeD4
	ifequal 8, eightbadgeD4
	end

Monster4D4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD4
	ifequal 1, onebadgeD4
	ifequal 2, twobadgeD4
	ifequal 3, threebadgeD4
	ifequal 4, fourbadgeD4
	ifequal 5, fivebadgeD4
	ifequal 6, sixbadgeD4
	ifequal 7, sevenbadgeD4
	ifequal 8, eightbadgeD4
	end

Monster5D4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeD4
	ifequal 1, onebadgeD4
	ifequal 2, twobadgeD4
	ifequal 3, threebadgeD4
	ifequal 4, fourbadgeD4
	ifequal 5, fivebadgeD4
	ifequal 6, sixbadgeD4
	ifequal 7, sevenbadgeD4
	ifequal 8, eightbadgeD4
	end


nobadgeD4:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

onebadgeD4:
	RuinRandomD1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

twobadgeD4:
	RuinRandomD2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

threebadgeD4:
	RuinRandomD3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

fourbadgeD4:
	RuinRandomD4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

fivebadgeD4:
	RuinRandomD5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

sixbadgeD4:
	RuinRandomD6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

sevenbadgeD4:
	RuinRandomD7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end

eightbadgeD4:
	RuinRandomD8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUIND_TARGET_DEFEATS, UnlockDoorsD4
	end
	
D4Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D4RUINS_POKE_BALL1D4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear D4RUINS_POKE_BALL1D4
	end	

	
D4Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear D4RUINS_POKE_BALL2D4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear D4RUINS_POKE_BALL2D4
	end	

UnlockDoorsD4:
	playsound SFX_2ND_PLACE 

	opentext
	writetext DButtonText
	promptbutton
	closetext
	appear D4RUINS_POKE_BALL1D4
	appear D4RUINS_POKE_BALL2D4	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


D4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpD4
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpD4


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1D4, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2D4, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3D4, -1
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4D4, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5D4, -1
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D4Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, D4Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
