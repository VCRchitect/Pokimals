; DO A CTRL+F AND REPLACE ALL OF THE F5 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F5RUINS_MONSTER1F5
	const F5RUINS_MONSTER2F5
	const F5RUINS_MONSTER3F5
	const F5RUINS_MONSTER4F5
	const F5RUINS_MONSTER5F5
	const F5RUINS_POKE_BALL1F5
	const F5RUINS_POKE_BALL2F5


F5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF5
	appear F5RUINS_POKE_BALL1F5
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF5
	appear F5RUINS_POKE_BALL2F5
	endcallback


BallDisappearF5:
	disappear F5RUINS_POKE_BALL1F5
	disappear F5RUINS_POKE_BALL2F5
	endcallback


RandomStairWarpF5:
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
	
Monster1F5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF5
	ifequal 1, onebadgeF5
	ifequal 2, twobadgeF5
	ifequal 3, threebadgeF5
	ifequal 4, fourbadgeF5
	ifequal 5, fivebadgeF5
	ifequal 6, sixbadgeF5
	ifequal 7, sevenbadgeF5
	ifequal 8, eightbadgeF5
	end
	
Monster2F5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF5
	ifequal 1, onebadgeF5
	ifequal 2, twobadgeF5
	ifequal 3, threebadgeF5
	ifequal 4, fourbadgeF5
	ifequal 5, fivebadgeF5
	ifequal 6, sixbadgeF5
	ifequal 7, sevenbadgeF5
	ifequal 8, eightbadgeF5
	end

Monster3F5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF5
	ifequal 1, onebadgeF5
	ifequal 2, twobadgeF5
	ifequal 3, threebadgeF5
	ifequal 4, fourbadgeF5
	ifequal 5, fivebadgeF5
	ifequal 6, sixbadgeF5
	ifequal 7, sevenbadgeF5
	ifequal 8, eightbadgeF5
	end

Monster4F5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF5
	ifequal 1, onebadgeF5
	ifequal 2, twobadgeF5
	ifequal 3, threebadgeF5
	ifequal 4, fourbadgeF5
	ifequal 5, fivebadgeF5
	ifequal 6, sixbadgeF5
	ifequal 7, sevenbadgeF5
	ifequal 8, eightbadgeF5
	end

Monster5F5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF5
	ifequal 1, onebadgeF5
	ifequal 2, twobadgeF5
	ifequal 3, threebadgeF5
	ifequal 4, fourbadgeF5
	ifequal 5, fivebadgeF5
	ifequal 6, sixbadgeF5
	ifequal 7, sevenbadgeF5
	ifequal 8, eightbadgeF5
	end


nobadgeF5:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

onebadgeF5:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

twobadgeF5:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

threebadgeF5:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

fourbadgeF5:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

fivebadgeF5:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

sixbadgeF5:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

sevenbadgeF5:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end

eightbadgeF5:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF5
	end
	
F5Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F5RUINS_POKE_BALL1F5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F5RUINS_POKE_BALL1F5
	end	

	
F5Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F5RUINS_POKE_BALL2F5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F5RUINS_POKE_BALL2F5
	end	

UnlockDoorsF5:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F5RUINS_POKE_BALL1F5
	appear F5RUINS_POKE_BALL2F5	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



F5_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF5
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF5


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F5, -1
	object_event  5,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F5, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F5, -1
	object_event  3,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F5, -1
	object_event  5,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F5, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F5Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F5Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
