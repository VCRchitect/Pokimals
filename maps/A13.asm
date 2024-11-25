; DO A CTRL+F AND REPLACE ALL OF THE A13 WITH THE ROOM NUMBER AND THE A WITH THE RUIN LETTER
	
	object_const_def
	const A13RUINS_MONSTER1A13
	const A13RUINS_MONSTER2A13
	const A13RUINS_MONSTER3A13
	const A13RUINS_MONSTER4A13
	const A13RUINS_MONSTER5A13
	const A13RUINS_POKE_BALL1A13
	const A13RUINS_POKE_BALL2A13


A13_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearA13
	appear A13RUINS_POKE_BALL1A13
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearA13
	appear A13RUINS_POKE_BALL2A13
	endcallback


BallDisappearA13:
	disappear A13RUINS_POKE_BALL1A13
	disappear A13RUINS_POKE_BALL2A13
	endcallback


RandomStairWarpA13:
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
	
Monster1A13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA13
	ifequal 1, onebadgeA13
	ifequal 2, twobadgeA13
	ifequal 3, threebadgeA13
	ifequal 4, fourbadgeA13
	ifequal 5, fivebadgeA13
	ifequal 6, siAbadgeA13
	ifequal 7, sevenbadgeA13
	ifequal 8, eightbadgeA13
	end
	
Monster2A13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA13
	ifequal 1, onebadgeA13
	ifequal 2, twobadgeA13
	ifequal 3, threebadgeA13
	ifequal 4, fourbadgeA13
	ifequal 5, fivebadgeA13
	ifequal 6, siAbadgeA13
	ifequal 7, sevenbadgeA13
	ifequal 8, eightbadgeA13
	end

Monster3A13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA13
	ifequal 1, onebadgeA13
	ifequal 2, twobadgeA13
	ifequal 3, threebadgeA13
	ifequal 4, fourbadgeA13
	ifequal 5, fivebadgeA13
	ifequal 6, siAbadgeA13
	ifequal 7, sevenbadgeA13
	ifequal 8, eightbadgeA13
	end

Monster4A13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA13
	ifequal 1, onebadgeA13
	ifequal 2, twobadgeA13
	ifequal 3, threebadgeA13
	ifequal 4, fourbadgeA13
	ifequal 5, fivebadgeA13
	ifequal 6, siAbadgeA13
	ifequal 7, sevenbadgeA13
	ifequal 8, eightbadgeA13
	end

Monster5A13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeA13
	ifequal 1, onebadgeA13
	ifequal 2, twobadgeA13
	ifequal 3, threebadgeA13
	ifequal 4, fourbadgeA13
	ifequal 5, fivebadgeA13
	ifequal 6, siAbadgeA13
	ifequal 7, sevenbadgeA13
	ifequal 8, eightbadgeA13
	end


nobadgeA13:
	RuinRandomABase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

onebadgeA13:
	RuinRandomA1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

twobadgeA13:
	RuinRandomA2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

threebadgeA13:
	RuinRandomA3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

fourbadgeA13:
	RuinRandomA4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

fivebadgeA13:
	RuinRandomA5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

siAbadgeA13:
	RuinRandomA6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

sevenbadgeA13:
	RuinRandomA7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end

eightbadgeA13:
	RuinRandomA8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA13
	end
	
A13Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear A13RUINS_POKE_BALL1A13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear A13RUINS_POKE_BALL1A13
	end	

	
A13Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear A13RUINS_POKE_BALL2A13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear A13RUINS_POKE_BALL2A13
	end	

UnlockDoorsA13:
	playsound SFX_2ND_PLACE 

	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear A13RUINS_POKE_BALL1A13
	appear A13RUINS_POKE_BALL2A13	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


A13_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarp8


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1A13, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2A13, -1
	object_event  5,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3A13, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4A13, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5A13, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A13Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A13Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
