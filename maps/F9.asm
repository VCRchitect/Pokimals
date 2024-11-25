; DO A CTRL+F AND REPLACE ALL OF THE F9 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F9RUINS_MONSTER1F9
	const F9RUINS_MONSTER2F9
	const F9RUINS_MONSTER3F9
	const F9RUINS_MONSTER4F9
	const F9RUINS_MONSTER5F9
	const F9RUINS_POKE_BALL1F9
	const F9RUINS_POKE_BALL2F9


F9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF9
	appear F9RUINS_POKE_BALL1F9
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF9
	appear F9RUINS_POKE_BALL2F9
	endcallback


BallDisappearF9:
	disappear F9RUINS_POKE_BALL1F9
	disappear F9RUINS_POKE_BALL2F9
	endcallback


RandomStairWarpF9:
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
	
Monster1F9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF9
	ifequal 1, onebadgeF9
	ifequal 2, twobadgeF9
	ifequal 3, threebadgeF9
	ifequal 4, fourbadgeF9
	ifequal 5, fivebadgeF9
	ifequal 6, sixbadgeF9
	ifequal 7, sevenbadgeF9
	ifequal 8, eightbadgeF9
	end
	
Monster2F9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF9
	ifequal 1, onebadgeF9
	ifequal 2, twobadgeF9
	ifequal 3, threebadgeF9
	ifequal 4, fourbadgeF9
	ifequal 5, fivebadgeF9
	ifequal 6, sixbadgeF9
	ifequal 7, sevenbadgeF9
	ifequal 8, eightbadgeF9
	end

Monster3F9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF9
	ifequal 1, onebadgeF9
	ifequal 2, twobadgeF9
	ifequal 3, threebadgeF9
	ifequal 4, fourbadgeF9
	ifequal 5, fivebadgeF9
	ifequal 6, sixbadgeF9
	ifequal 7, sevenbadgeF9
	ifequal 8, eightbadgeF9
	end

Monster4F9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF9
	ifequal 1, onebadgeF9
	ifequal 2, twobadgeF9
	ifequal 3, threebadgeF9
	ifequal 4, fourbadgeF9
	ifequal 5, fivebadgeF9
	ifequal 6, sixbadgeF9
	ifequal 7, sevenbadgeF9
	ifequal 8, eightbadgeF9
	end

Monster5F9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF9
	ifequal 1, onebadgeF9
	ifequal 2, twobadgeF9
	ifequal 3, threebadgeF9
	ifequal 4, fourbadgeF9
	ifequal 5, fivebadgeF9
	ifequal 6, sixbadgeF9
	ifequal 7, sevenbadgeF9
	ifequal 8, eightbadgeF9
	end


nobadgeF9:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

onebadgeF9:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

twobadgeF9:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

threebadgeF9:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

fourbadgeF9:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

fivebadgeF9:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

sixbadgeF9:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

sevenbadgeF9:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end

eightbadgeF9:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF9
	end
	
F9Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F9RUINS_POKE_BALL1F9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F9RUINS_POKE_BALL1F9
	end	

	
F9Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F9RUINS_POKE_BALL2F9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F9RUINS_POKE_BALL2F9
	end	

UnlockDoorsF9:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F9RUINS_POKE_BALL1F9
	appear F9RUINS_POKE_BALL2F9	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



F9_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF9
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF9


	def_bg_events

	def_object_events
	object_event  2,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F9, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F9, -1
	object_event  7,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F9, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F9, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F9, -1
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F9Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F9Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
