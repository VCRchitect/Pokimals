; DO A CTRL+F AND REPLACE ALL OF THE B14 WITH THE ROOM NUMBER AND THE B WITH THE RUIN LETTER
	
	object_const_def
	const B14RUINS_MONSTER1B14
	const B14RUINS_MONSTER2B14
	const B14RUINS_MONSTER3B14
	const B14RUINS_MONSTER4B14
	const B14RUINS_MONSTER5B14
	const B14RUINS_POKE_BALL1B14
	const B14RUINS_POKE_BALL2B14


B14_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB14
	appear B14RUINS_POKE_BALL1B14
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearB14
	appear B14RUINS_POKE_BALL2B14
	endcallback


BallDisappearB14:
	disappear B14RUINS_POKE_BALL1B14
	disappear B14RUINS_POKE_BALL2B14
	endcallback


RandomStairWarpB14:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperB
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp B10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp BPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1B14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB14
	ifequal 1, onebadgeB14
	ifequal 2, twobadgeB14
	ifequal 3, threebadgeB14
	ifequal 4, fourbadgeB14
	ifequal 5, fivebadgeB14
	ifequal 6, sixbadgeB14
	ifequal 7, sevenbadgeB14
	ifequal 8, eightbadgeB14
	end
	
Monster2B14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB14
	ifequal 1, onebadgeB14
	ifequal 2, twobadgeB14
	ifequal 3, threebadgeB14
	ifequal 4, fourbadgeB14
	ifequal 5, fivebadgeB14
	ifequal 6, sixbadgeB14
	ifequal 7, sevenbadgeB14
	ifequal 8, eightbadgeB14
	end

Monster3B14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB14
	ifequal 1, onebadgeB14
	ifequal 2, twobadgeB14
	ifequal 3, threebadgeB14
	ifequal 4, fourbadgeB14
	ifequal 5, fivebadgeB14
	ifequal 6, sixbadgeB14
	ifequal 7, sevenbadgeB14
	ifequal 8, eightbadgeB14
	end

Monster4B14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB14
	ifequal 1, onebadgeB14
	ifequal 2, twobadgeB14
	ifequal 3, threebadgeB14
	ifequal 4, fourbadgeB14
	ifequal 5, fivebadgeB14
	ifequal 6, sixbadgeB14
	ifequal 7, sevenbadgeB14
	ifequal 8, eightbadgeB14
	end

Monster5B14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeB14
	ifequal 1, onebadgeB14
	ifequal 2, twobadgeB14
	ifequal 3, threebadgeB14
	ifequal 4, fourbadgeB14
	ifequal 5, fivebadgeB14
	ifequal 6, sixbadgeB14
	ifequal 7, sevenbadgeB14
	ifequal 8, eightbadgeB14
	end


nobadgeB14:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

onebadgeB14:
	RuinRandomB1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

twobadgeB14:
	RuinRandomB2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

threebadgeB14:
	RuinRandomB3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

fourbadgeB14:
	RuinRandomB4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

fivebadgeB14:
	RuinRandomB5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

sixbadgeB14:
	RuinRandomB6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

sevenbadgeB14:
	RuinRandomB7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end

eightbadgeB14:
	RuinRandomB8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINB_TARGET_DEFEATS, UnlockDoorsB14
	end
	
B14Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B14RUINS_POKE_BALL1B14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear B14RUINS_POKE_BALL1B14
	end	

	
B14Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear B14RUINS_POKE_BALL2B14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear B14RUINS_POKE_BALL2B14
	end	

UnlockDoorsB14:
	opentext
	writetext BButtonText
	promptbutton
	closetext
	appear B14RUINS_POKE_BALL1B14
	appear B14RUINS_POKE_BALL2B14	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end

BButtonText:
	text "Room Clear!"
	done

B14_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB14
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB14


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1B14, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2B14, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3B14, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4B14, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5B14, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B14Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, B14Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
