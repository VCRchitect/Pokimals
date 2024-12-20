	object_const_def
	const ARUINS_MONSTER1d
	const ARUINS_MONSTER2d
	const ARUINS_MONSTER3d
	const ARUINS_MONSTER4d
	const ARUINS_MONSTER5d
	const ARUINS_POKE_BALL1d
	const ARUINS_POKE_BALL2d
	

A5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2
	
.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeard
	appear ARUINS_POKE_BALL1d
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeard
	appear ARUINS_POKE_BALL2d
	endcallback


BallDisappeard:
	disappear ARUINS_POKE_BALL1d
	disappear ARUINS_POKE_BALL2d
	endcallback


RandomStairWarp5:
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
	
Monster1d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end
	
Monster2d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end

Monster3d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end

Monster4d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end

Monster5d:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadged
	ifequal 1, onebadged
	ifequal 2, twobadged
	ifequal 3, threebadged
	ifequal 4, fourbadged
	ifequal 5, fivebadged
	ifequal 6, sixbadged
	ifequal 7, sevenbadged
	ifequal 8, eightbadged
	end
	
	
nobadged:
	RuinRandomABase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

onebadged:
	RuinRandomA1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

twobadged:
	RuinRandomA2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

threebadged:
	RuinRandomA3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

fourbadged:
	RuinRandomA4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

fivebadged:
	RuinRandomA5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

sixbadged:
	RuinRandomA6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

sevenbadged:
	RuinRandomA7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end

eightbadged:
	RuinRandomA8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsD
	end
	
A5Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1d
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	

	closetext
	disappear ARUINS_POKE_BALL1d
	end	
	
A5Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2d
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL2d
	end	

UnlockDoorsD:
	playsound SFX_2ND_PLACE 

	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1d
	appear ARUINS_POKE_BALL2d	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end
	

A5_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarp5
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarp5

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1d, -1
	object_event  7,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2d, -1
	object_event  6,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3d, -1
	object_event  4,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4d, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5d, -1
	object_event  2,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A5Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A5Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
