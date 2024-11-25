; DO A CTRL+F AND REPLACE ALL OF THE F8 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F8RUINS_MONSTER1F8
	const F8RUINS_MONSTER2F8
	const F8RUINS_MONSTER3F8
	const F8RUINS_MONSTER4F8
	const F8RUINS_MONSTER5F8
	const F8RUINS_POKE_BALL1F8
	const F8RUINS_POKE_BALL2F8


F8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF8
	appear F8RUINS_POKE_BALL1F8
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF8
	appear F8RUINS_POKE_BALL2F8
	endcallback


BallDisappearF8:
	disappear F8RUINS_POKE_BALL1F8
	disappear F8RUINS_POKE_BALL2F8
	endcallback


RandomStairWarpF8:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperF
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp F10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp FPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1F8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF8
	ifequal 1, onebadgeF8
	ifequal 2, twobadgeF8
	ifequal 3, threebadgeF8
	ifequal 4, fourbadgeF8
	ifequal 5, fivebadgeF8
	ifequal 6, sixbadgeF8
	ifequal 7, sevenbadgeF8
	ifequal 8, eightbadgeF8
	end
	
Monster2F8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF8
	ifequal 1, onebadgeF8
	ifequal 2, twobadgeF8
	ifequal 3, threebadgeF8
	ifequal 4, fourbadgeF8
	ifequal 5, fivebadgeF8
	ifequal 6, sixbadgeF8
	ifequal 7, sevenbadgeF8
	ifequal 8, eightbadgeF8
	end

Monster3F8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF8
	ifequal 1, onebadgeF8
	ifequal 2, twobadgeF8
	ifequal 3, threebadgeF8
	ifequal 4, fourbadgeF8
	ifequal 5, fivebadgeF8
	ifequal 6, sixbadgeF8
	ifequal 7, sevenbadgeF8
	ifequal 8, eightbadgeF8
	end

Monster4F8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF8
	ifequal 1, onebadgeF8
	ifequal 2, twobadgeF8
	ifequal 3, threebadgeF8
	ifequal 4, fourbadgeF8
	ifequal 5, fivebadgeF8
	ifequal 6, sixbadgeF8
	ifequal 7, sevenbadgeF8
	ifequal 8, eightbadgeF8
	end

Monster5F8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF8
	ifequal 1, onebadgeF8
	ifequal 2, twobadgeF8
	ifequal 3, threebadgeF8
	ifequal 4, fourbadgeF8
	ifequal 5, fivebadgeF8
	ifequal 6, sixbadgeF8
	ifequal 7, sevenbadgeF8
	ifequal 8, eightbadgeF8
	end


nobadgeF8:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

onebadgeF8:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

twobadgeF8:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

threebadgeF8:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

fourbadgeF8:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

fivebadgeF8:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

sixbadgeF8:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

sevenbadgeF8:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end

eightbadgeF8:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF8
	end
	
F8Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F8RUINS_POKE_BALL1F8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F8RUINS_POKE_BALL1F8
	end	

	
F8Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F8RUINS_POKE_BALL2F8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F8RUINS_POKE_BALL2F8
	end	

UnlockDoorsF8:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F8RUINS_POKE_BALL1F8
	appear F8RUINS_POKE_BALL2F8	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



F8_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF8
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF8


	def_bg_events

	def_object_events
	object_event  5,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F8, -1
	object_event  5,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F8, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F8, -1
	object_event  2,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F8, -1
	object_event  3,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F8, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F8Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F8Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
