	object_const_def
	const ARUINS_MONSTER1k
	const ARUINS_MONSTER2k
	const ARUINS_MONSTER3k
	const ARUINS_MONSTER4k
	const ARUINS_MONSTER5k
	const ARUINS_POKE_BALL1k
	const ARUINS_POKE_BALL2k
	

A12_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2	

.DummyScene: ; unreferenced
	end


.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeark
	appear ARUINS_POKE_BALL1k
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeark
	appear ARUINS_POKE_BALL2k
	endcallback

BallDisappeark:
	disappear ARUINS_POKE_BALL1k
	disappear ARUINS_POKE_BALL2k
	endcallback


RandomStairWarp12:
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
	
Monster1k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgek
	ifequal 1, onebadgek
	ifequal 2, twobadgek
	ifequal 3, threebadgek
	ifequal 4, fourbadgek
	ifequal 5, fivebadgek
	ifequal 6, sixbadgek
	ifequal 7, sevenbadgek
	ifequal 8, eightbadgek
	end
	
Monster2k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgek
	ifequal 1, onebadgek
	ifequal 2, twobadgek
	ifequal 3, threebadgek
	ifequal 4, fourbadgek
	ifequal 5, fivebadgek
	ifequal 6, sixbadgek
	ifequal 7, sevenbadgek
	ifequal 8, eightbadgek
	end

Monster3k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgek
	ifequal 1, onebadgek
	ifequal 2, twobadgek
	ifequal 3, threebadgek
	ifequal 4, fourbadgek
	ifequal 5, fivebadgek
	ifequal 6, sixbadgek
	ifequal 7, sevenbadgek
	ifequal 8, eightbadgek
	end

Monster4k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgek
	ifequal 1, onebadgek
	ifequal 2, twobadgek
	ifequal 3, threebadgek
	ifequal 4, fourbadgek
	ifequal 5, fivebadgek
	ifequal 6, sixbadgek
	ifequal 7, sevenbadgek
	ifequal 8, eightbadgek
	end

Monster5k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgek
	ifequal 1, onebadgek
	ifequal 2, twobadgek
	ifequal 3, threebadgek
	ifequal 4, fourbadgek
	ifequal 5, fivebadgek
	ifequal 6, sixbadgek
	ifequal 7, sevenbadgek
	ifequal 8, eightbadgek
	end
	
	
nobadgek:
	RuinRandomABase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

onebadgek:
	RuinRandomA1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

twobadgek:
	RuinRandomA2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

threebadgek:
	RuinRandomA3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

fourbadgek:
	RuinRandomA4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

fivebadgek:
	RuinRandomA5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

sixbadgek:
	RuinRandomA6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

sevenbadgek:
	RuinRandomA7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end

eightbadgek:
	RuinRandomA8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsK
	end
	
A12Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1k
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL1k
	end	


	
A12Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2k
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear ARUINS_POKE_BALL2k
	end	
	
UnlockDoorsK:
	playsound SFX_2ND_PLACE 

	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1k
	appear ARUINS_POKE_BALL2k		
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 6, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end


	
A12_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12



	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1k, -1
	object_event  6,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2k, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3k, -1
	object_event  3,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4k, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5k, -1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A12Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A12Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
