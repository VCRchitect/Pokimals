; DO A CTRL+F AND REPLACE ALL OF THE A14 WITH THE ROOM NUMBER AND THE A WITH THE RUIN LETTER
	
	object_const_def
	const A14RUINS_MONSTER1A14
	const A14RUINS_MONSTER2A14
	const A14RUINS_MONSTER3A14
	const A14RUINS_MONSTER4A14
	const A14RUINS_MONSTER5A14
	const A14RUINS_POKE_BALL1A14
	const A14RUINS_POKE_BALL2A14


A14_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearA14
	appear A14RUINS_POKE_BALL1A14
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearA14
	appear A14RUINS_POKE_BALL2A14
	endcallback


BallDisappearA14:
	disappear A14RUINS_POKE_BALL1A14
	disappear A14RUINS_POKE_BALL2A14
	endcallback


RandomStairWarpA14:
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
	
Monster1A14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA14
	ifequal 1, onebadgeA14
	ifequal 2, twobadgeA14
	ifequal 3, threebadgeA14
	ifequal 4, fourbadgeA14
	ifequal 5, fivebadgeA14
	ifequal 6, siAbadgeA14
	ifequal 7, sevenbadgeA14
	ifequal 8, eightbadgeA14
	end
	
Monster2A14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA14
	ifequal 1, onebadgeA14
	ifequal 2, twobadgeA14
	ifequal 3, threebadgeA14
	ifequal 4, fourbadgeA14
	ifequal 5, fivebadgeA14
	ifequal 6, siAbadgeA14
	ifequal 7, sevenbadgeA14
	ifequal 8, eightbadgeA14
	end

Monster3A14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA14
	ifequal 1, onebadgeA14
	ifequal 2, twobadgeA14
	ifequal 3, threebadgeA14
	ifequal 4, fourbadgeA14
	ifequal 5, fivebadgeA14
	ifequal 6, siAbadgeA14
	ifequal 7, sevenbadgeA14
	ifequal 8, eightbadgeA14
	end

Monster4A14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA14
	ifequal 1, onebadgeA14
	ifequal 2, twobadgeA14
	ifequal 3, threebadgeA14
	ifequal 4, fourbadgeA14
	ifequal 5, fivebadgeA14
	ifequal 6, siAbadgeA14
	ifequal 7, sevenbadgeA14
	ifequal 8, eightbadgeA14
	end

Monster5A14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA14
	ifequal 1, onebadgeA14
	ifequal 2, twobadgeA14
	ifequal 3, threebadgeA14
	ifequal 4, fourbadgeA14
	ifequal 5, fivebadgeA14
	ifequal 6, siAbadgeA14
	ifequal 7, sevenbadgeA14
	ifequal 8, eightbadgeA14
	end


nobadgeA14:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

onebadgeA14:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

twobadgeA14:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

threebadgeA14:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

fourbadgeA14:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

fivebadgeA14:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

siAbadgeA14:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

sevenbadgeA14:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end

eightbadgeA14:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA14
	end
	
A14Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear A14RUINS_POKE_BALL1A14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear A14RUINS_POKE_BALL1A14
	end	

	
A14Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear A14RUINS_POKE_BALL2A14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear A14RUINS_POKE_BALL2A14
	end	

UnlockDoorsA14:
	playsound SFX_2ND_PLACE 

	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear A14RUINS_POKE_BALL1A14
	appear A14RUINS_POKE_BALL2A14	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 4, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


A14_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  4, SCENE_RANDOMSTAIRS, RandomStairWarp8
	coord_event  5,  4, SCENE_RANDOMSTAIRS, RandomStairWarp8


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1A14, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2A14, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3A14, -1
	object_event  5,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4A14, -1
	object_event  1,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5A14, -1
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A14Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A14Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
