; DO A CTRL+F AND REPLACE ALL OF THE C14 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C14RUINS_MONSTER1C14
	const C14RUINS_MONSTER2C14
	const C14RUINS_MONSTER3C14
	const C14RUINS_MONSTER4C14
	const C14RUINS_MONSTER5C14
	const C14RUINS_POKE_BALL1C14
	const C14RUINS_POKE_BALL2C14


C14_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC14
	appear C14RUINS_POKE_BALL1C14
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC14
	appear C14RUINS_POKE_BALL2C14
	endcallback


BallDisappearC14:
	disappear C14RUINS_POKE_BALL1C14
	disappear C14RUINS_POKE_BALL2C14
	endcallback


RandomStairWarpC14:
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
	
Monster1C14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC14
	ifequal 1, onebadgeC14
	ifequal 2, twobadgeC14
	ifequal 3, threebadgeC14
	ifequal 4, fourbadgeC14
	ifequal 5, fivebadgeC14
	ifequal 6, sixbadgeC14
	ifequal 7, sevenbadgeC14
	ifequal 8, eightbadgeC14
	end
	
Monster2C14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC14
	ifequal 1, onebadgeC14
	ifequal 2, twobadgeC14
	ifequal 3, threebadgeC14
	ifequal 4, fourbadgeC14
	ifequal 5, fivebadgeC14
	ifequal 6, sixbadgeC14
	ifequal 7, sevenbadgeC14
	ifequal 8, eightbadgeC14
	end

Monster3C14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC14
	ifequal 1, onebadgeC14
	ifequal 2, twobadgeC14
	ifequal 3, threebadgeC14
	ifequal 4, fourbadgeC14
	ifequal 5, fivebadgeC14
	ifequal 6, sixbadgeC14
	ifequal 7, sevenbadgeC14
	ifequal 8, eightbadgeC14
	end

Monster4C14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC14
	ifequal 1, onebadgeC14
	ifequal 2, twobadgeC14
	ifequal 3, threebadgeC14
	ifequal 4, fourbadgeC14
	ifequal 5, fivebadgeC14
	ifequal 6, sixbadgeC14
	ifequal 7, sevenbadgeC14
	ifequal 8, eightbadgeC14
	end

Monster5C14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC14
	ifequal 1, onebadgeC14
	ifequal 2, twobadgeC14
	ifequal 3, threebadgeC14
	ifequal 4, fourbadgeC14
	ifequal 5, fivebadgeC14
	ifequal 6, sixbadgeC14
	ifequal 7, sevenbadgeC14
	ifequal 8, eightbadgeC14
	end


nobadgeC14:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

onebadgeC14:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

twobadgeC14:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

threebadgeC14:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

fourbadgeC14:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

fivebadgeC14:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

sixbadgeC14:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

sevenbadgeC14:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end

eightbadgeC14:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC14
	end
	
C14Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C14RUINS_POKE_BALL1C14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C14RUINS_POKE_BALL1C14
	end	

	
C14Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C14RUINS_POKE_BALL2C14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C14RUINS_POKE_BALL2C14
	end	

UnlockDoorsC14:
	playsound SFX_2ND_PLACE 

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C14RUINS_POKE_BALL1C14
	appear C14RUINS_POKE_BALL2C14	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 4, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end

C14_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  4, SCENE_RANDOMSTAIRS, RandomStairWarpC14
	coord_event  5,  4, SCENE_RANDOMSTAIRS, RandomStairWarpC14


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C14, -1
	object_event  7,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C14, -1
	object_event  8,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C14, -1
	object_event  1,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C14, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C14, -1
	object_event  2,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C14Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C14Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
