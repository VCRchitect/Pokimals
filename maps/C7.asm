; DO A CTRL+F AND REPLACE ALL OF THE C7 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C7RUINS_MONSTER1C7
	const C7RUINS_MONSTER2C7
	const C7RUINS_MONSTER3C7
	const C7RUINS_MONSTER4C7
	const C7RUINS_MONSTER5C7
	const C7RUINS_POKE_BALL1C7
	const C7RUINS_POKE_BALL2C7


C7_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC7
	appear C7RUINS_POKE_BALL1C7
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC7
	appear C7RUINS_POKE_BALL2C7
	endcallback


BallDisappearC7:
	disappear C7RUINS_POKE_BALL1C7
	disappear C7RUINS_POKE_BALL2C7
	endcallback


RandomStairWarpC7:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperC
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp C10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp CPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1C7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC7
	ifequal 1, onebadgeC7
	ifequal 2, twobadgeC7
	ifequal 3, threebadgeC7
	ifequal 4, fourbadgeC7
	ifequal 5, fivebadgeC7
	ifequal 6, sixbadgeC7
	ifequal 7, sevenbadgeC7
	ifequal 8, eightbadgeC7
	end
	
Monster2C7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC7
	ifequal 1, onebadgeC7
	ifequal 2, twobadgeC7
	ifequal 3, threebadgeC7
	ifequal 4, fourbadgeC7
	ifequal 5, fivebadgeC7
	ifequal 6, sixbadgeC7
	ifequal 7, sevenbadgeC7
	ifequal 8, eightbadgeC7
	end

Monster3C7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC7
	ifequal 1, onebadgeC7
	ifequal 2, twobadgeC7
	ifequal 3, threebadgeC7
	ifequal 4, fourbadgeC7
	ifequal 5, fivebadgeC7
	ifequal 6, sixbadgeC7
	ifequal 7, sevenbadgeC7
	ifequal 8, eightbadgeC7
	end

Monster4C7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC7
	ifequal 1, onebadgeC7
	ifequal 2, twobadgeC7
	ifequal 3, threebadgeC7
	ifequal 4, fourbadgeC7
	ifequal 5, fivebadgeC7
	ifequal 6, sixbadgeC7
	ifequal 7, sevenbadgeC7
	ifequal 8, eightbadgeC7
	end

Monster5C7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC7
	ifequal 1, onebadgeC7
	ifequal 2, twobadgeC7
	ifequal 3, threebadgeC7
	ifequal 4, fourbadgeC7
	ifequal 5, fivebadgeC7
	ifequal 6, sixbadgeC7
	ifequal 7, sevenbadgeC7
	ifequal 8, eightbadgeC7
	end


nobadgeC7:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

onebadgeC7:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

twobadgeC7:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

threebadgeC7:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

fourbadgeC7:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

fivebadgeC7:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

sixbadgeC7:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

sevenbadgeC7:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end

eightbadgeC7:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC7
	end
	
C7Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C7RUINS_POKE_BALL1C7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C7RUINS_POKE_BALL1C7
	end	

	
C7Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C7RUINS_POKE_BALL2C7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C7RUINS_POKE_BALL2C7
	end	

UnlockDoorsC7:
	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C7RUINS_POKE_BALL1C7
	appear C7RUINS_POKE_BALL2C7	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C7_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC7
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC7


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C7, -1
	object_event 10,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C7, -1
	object_event  7,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C7, -1
	object_event  9,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C7, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C7, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C7Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 11,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C7Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
