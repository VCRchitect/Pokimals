; DO A CTRL+F AND REPLACE ALL OF THE ` WITH THE ROOM NUMBER AND THE X WITH THE RUIN LETTER
	
	object_const_def
	const `RUINS_MONSTER1`
	const `RUINS_MONSTER2`
	const `RUINS_MONSTER3`
	const `RUINS_MONSTER4`
	const `RUINS_MONSTER5`
	const `RUINS_POKE_BALL1`
	const `RUINS_POKE_BALL2`


`_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappear`
	appear `RUINS_POKE_BALL1`
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappear`
	appear `RUINS_POKE_BALL2`
	endcallback


BallDisappear`:
	disappear `RUINS_POKE_BALL1`
	disappear `RUINS_POKE_BALL2`
	endcallback


RandomStairWarp`:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warper
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp A10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp APREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1`:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge`
	ifequal 1, onebadge`
	ifequal 2, twobadge`
	ifequal 3, threebadge`
	ifequal 4, fourbadge`
	ifequal 5, fivebadge`
	ifequal 6, sixbadge`
	ifequal 7, sevenbadge`
	ifequal 8, eightbadge`
	end
	
Monster2`:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge`
	ifequal 1, onebadge`
	ifequal 2, twobadge`
	ifequal 3, threebadge`
	ifequal 4, fourbadge`
	ifequal 5, fivebadge`
	ifequal 6, sixbadge`
	ifequal 7, sevenbadge`
	ifequal 8, eightbadge`
	end

Monster3`:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge`
	ifequal 1, onebadge`
	ifequal 2, twobadge`
	ifequal 3, threebadge`
	ifequal 4, fourbadge`
	ifequal 5, fivebadge`
	ifequal 6, sixbadge`
	ifequal 7, sevenbadge`
	ifequal 8, eightbadge`
	end

Monster4`:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge`
	ifequal 1, onebadge`
	ifequal 2, twobadge`
	ifequal 3, threebadge`
	ifequal 4, fourbadge`
	ifequal 5, fivebadge`
	ifequal 6, sixbadge`
	ifequal 7, sevenbadge`
	ifequal 8, eightbadge`
	end

Monster5`:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge`
	ifequal 1, onebadge`
	ifequal 2, twobadge`
	ifequal 3, threebadge`
	ifequal 4, fourbadge`
	ifequal 5, fivebadge`
	ifequal 6, sixbadge`
	ifequal 7, sevenbadge`
	ifequal 8, eightbadge`
	end


nobadge`:
	RuinRandomXBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

onebadge`:
	RuinRandomX1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

twobadge`:
	RuinRandomX2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

threebadge`:
	RuinRandomX3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

fourbadge`:
	RuinRandomX4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

fivebadge`:
	RuinRandomX5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

sixbadge`:
	RuinRandomX6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

sevenbadge`:
	RuinRandomX7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end

eightbadge`:
	RuinRandomX8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINX_TARGET_DEFEATS, UnlockDoors
	end
	
`Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear `RUINS_POKE_BALL1`
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear `RUINS_POKE_BALL1`
	end	

	
`Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear `RUINS_POKE_BALL2`
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear `RUINS_POKE_BALL2`
	end	

UnlockDoors`:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear `RUINS_POKE_BALL1`
	appear `RUINS_POKE_BALL2`	
	changedoor 2, 0, $0B
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


`_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1`, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2`, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3`, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4`, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5`, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, `Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, `Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
