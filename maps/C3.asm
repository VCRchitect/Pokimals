; DO A CTRL+F AND REPLACE ALL OF THE C3 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C3RUINS_MONSTER1C3
	const C3RUINS_MONSTER2C3
	const C3RUINS_MONSTER3C3
	const C3RUINS_MONSTER4C3
	const C3RUINS_MONSTER5C3
	const C3RUINS_POKE_BALL1C3
	const C3RUINS_POKE_BALL2C3


C3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC3
	appear C3RUINS_POKE_BALL1C3
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC3
	appear C3RUINS_POKE_BALL2C3
	endcallback


BallDisappearC3:
	disappear C3RUINS_POKE_BALL1C3
	disappear C3RUINS_POKE_BALL2C3
	endcallback


RandomStairWarpC3:
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
	
Monster1C3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC3
	ifequal 1, onebadgeC3
	ifequal 2, twobadgeC3
	ifequal 3, threebadgeC3
	ifequal 4, fourbadgeC3
	ifequal 5, fivebadgeC3
	ifequal 6, sixbadgeC3
	ifequal 7, sevenbadgeC3
	ifequal 8, eightbadgeC3
	end
	
Monster2C3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC3
	ifequal 1, onebadgeC3
	ifequal 2, twobadgeC3
	ifequal 3, threebadgeC3
	ifequal 4, fourbadgeC3
	ifequal 5, fivebadgeC3
	ifequal 6, sixbadgeC3
	ifequal 7, sevenbadgeC3
	ifequal 8, eightbadgeC3
	end

Monster3C3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC3
	ifequal 1, onebadgeC3
	ifequal 2, twobadgeC3
	ifequal 3, threebadgeC3
	ifequal 4, fourbadgeC3
	ifequal 5, fivebadgeC3
	ifequal 6, sixbadgeC3
	ifequal 7, sevenbadgeC3
	ifequal 8, eightbadgeC3
	end

Monster4C3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC3
	ifequal 1, onebadgeC3
	ifequal 2, twobadgeC3
	ifequal 3, threebadgeC3
	ifequal 4, fourbadgeC3
	ifequal 5, fivebadgeC3
	ifequal 6, sixbadgeC3
	ifequal 7, sevenbadgeC3
	ifequal 8, eightbadgeC3
	end

Monster5C3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC3
	ifequal 1, onebadgeC3
	ifequal 2, twobadgeC3
	ifequal 3, threebadgeC3
	ifequal 4, fourbadgeC3
	ifequal 5, fivebadgeC3
	ifequal 6, sixbadgeC3
	ifequal 7, sevenbadgeC3
	ifequal 8, eightbadgeC3
	end


nobadgeC3:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

onebadgeC3:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

twobadgeC3:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

threebadgeC3:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

fourbadgeC3:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

fivebadgeC3:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

sixbadgeC3:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

sevenbadgeC3:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end

eightbadgeC3:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC3
	end
	
C3Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C3RUINS_POKE_BALL1C3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C3RUINS_POKE_BALL1C3
	end	

	
C3Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C3RUINS_POKE_BALL2C3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C3RUINS_POKE_BALL2C3
	end	

UnlockDoorsC3:
	playsound SFX_2ND_PLACE 

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C3RUINS_POKE_BALL1C3
	appear C3RUINS_POKE_BALL2C3	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C3_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC3
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC3


	def_bg_events

	def_object_events
	object_event  2,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C3, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C3, -1
	object_event  8,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C3, -1
	object_event  1,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C3, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C3, -1
	object_event  3,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C3Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C3Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
