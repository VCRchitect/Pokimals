; DO A CTRL+F AND REPLACE ALL OF THE F4 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F4RUINS_MONSTER1F4
	const F4RUINS_MONSTER2F4
	const F4RUINS_MONSTER3F4
	const F4RUINS_MONSTER4F4
	const F4RUINS_MONSTER5F4
	const F4RUINS_POKE_BALL1F4
	const F4RUINS_POKE_BALL2F4


F4_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF4
	appear F4RUINS_POKE_BALL1F4
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF4
	appear F4RUINS_POKE_BALL2F4
	endcallback


BallDisappearF4:
	disappear F4RUINS_POKE_BALL1F4
	disappear F4RUINS_POKE_BALL2F4
	endcallback


RandomStairWarpF4:
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
	
Monster1F4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF4
	ifequal 1, onebadgeF4
	ifequal 2, twobadgeF4
	ifequal 3, threebadgeF4
	ifequal 4, fourbadgeF4
	ifequal 5, fivebadgeF4
	ifequal 6, sixbadgeF4
	ifequal 7, sevenbadgeF4
	ifequal 8, eightbadgeF4
	end
	
Monster2F4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF4
	ifequal 1, onebadgeF4
	ifequal 2, twobadgeF4
	ifequal 3, threebadgeF4
	ifequal 4, fourbadgeF4
	ifequal 5, fivebadgeF4
	ifequal 6, sixbadgeF4
	ifequal 7, sevenbadgeF4
	ifequal 8, eightbadgeF4
	end

Monster3F4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF4
	ifequal 1, onebadgeF4
	ifequal 2, twobadgeF4
	ifequal 3, threebadgeF4
	ifequal 4, fourbadgeF4
	ifequal 5, fivebadgeF4
	ifequal 6, sixbadgeF4
	ifequal 7, sevenbadgeF4
	ifequal 8, eightbadgeF4
	end

Monster4F4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF4
	ifequal 1, onebadgeF4
	ifequal 2, twobadgeF4
	ifequal 3, threebadgeF4
	ifequal 4, fourbadgeF4
	ifequal 5, fivebadgeF4
	ifequal 6, sixbadgeF4
	ifequal 7, sevenbadgeF4
	ifequal 8, eightbadgeF4
	end

Monster5F4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF4
	ifequal 1, onebadgeF4
	ifequal 2, twobadgeF4
	ifequal 3, threebadgeF4
	ifequal 4, fourbadgeF4
	ifequal 5, fivebadgeF4
	ifequal 6, sixbadgeF4
	ifequal 7, sevenbadgeF4
	ifequal 8, eightbadgeF4
	end


nobadgeF4:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

onebadgeF4:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

twobadgeF4:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

threebadgeF4:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

fourbadgeF4:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

fivebadgeF4:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

sixbadgeF4:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

sevenbadgeF4:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end

eightbadgeF4:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF4
	end
	
F4Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F4RUINS_POKE_BALL1F4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F4RUINS_POKE_BALL1F4
	end	

	
F4Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F4RUINS_POKE_BALL2F4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F4RUINS_POKE_BALL2F4
	end	

UnlockDoorsF4:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F4RUINS_POKE_BALL1F4
	appear F4RUINS_POKE_BALL2F4	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


F4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpF4
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpF4


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F4, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F4, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F4, -1
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F4, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F4, -1
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F4Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F4Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
