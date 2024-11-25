; DO A CTRL+F AND REPLACE ALL OF THE F3 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F3RUINS_MONSTER1F3
	const F3RUINS_MONSTER2F3
	const F3RUINS_MONSTER3F3
	const F3RUINS_MONSTER4F3
	const F3RUINS_MONSTER5F3
	const F3RUINS_POKE_BALL1F3
	const F3RUINS_POKE_BALL2F3


F3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF3
	appear F3RUINS_POKE_BALL1F3
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF3
	appear F3RUINS_POKE_BALL2F3
	endcallback


BallDisappearF3:
	disappear F3RUINS_POKE_BALL1F3
	disappear F3RUINS_POKE_BALL2F3
	endcallback


RandomStairWarpF3:
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
	
Monster1F3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF3
	ifequal 1, onebadgeF3
	ifequal 2, twobadgeF3
	ifequal 3, threebadgeF3
	ifequal 4, fourbadgeF3
	ifequal 5, fivebadgeF3
	ifequal 6, sixbadgeF3
	ifequal 7, sevenbadgeF3
	ifequal 8, eightbadgeF3
	end
	
Monster2F3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF3
	ifequal 1, onebadgeF3
	ifequal 2, twobadgeF3
	ifequal 3, threebadgeF3
	ifequal 4, fourbadgeF3
	ifequal 5, fivebadgeF3
	ifequal 6, sixbadgeF3
	ifequal 7, sevenbadgeF3
	ifequal 8, eightbadgeF3
	end

Monster3F3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF3
	ifequal 1, onebadgeF3
	ifequal 2, twobadgeF3
	ifequal 3, threebadgeF3
	ifequal 4, fourbadgeF3
	ifequal 5, fivebadgeF3
	ifequal 6, sixbadgeF3
	ifequal 7, sevenbadgeF3
	ifequal 8, eightbadgeF3
	end

Monster4F3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF3
	ifequal 1, onebadgeF3
	ifequal 2, twobadgeF3
	ifequal 3, threebadgeF3
	ifequal 4, fourbadgeF3
	ifequal 5, fivebadgeF3
	ifequal 6, sixbadgeF3
	ifequal 7, sevenbadgeF3
	ifequal 8, eightbadgeF3
	end

Monster5F3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF3
	ifequal 1, onebadgeF3
	ifequal 2, twobadgeF3
	ifequal 3, threebadgeF3
	ifequal 4, fourbadgeF3
	ifequal 5, fivebadgeF3
	ifequal 6, sixbadgeF3
	ifequal 7, sevenbadgeF3
	ifequal 8, eightbadgeF3
	end


nobadgeF3:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

onebadgeF3:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

twobadgeF3:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

threebadgeF3:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

fourbadgeF3:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

fivebadgeF3:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

sixbadgeF3:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

sevenbadgeF3:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end

eightbadgeF3:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 1500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF3
	end
	
F3Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F3RUINS_POKE_BALL1F3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F3RUINS_POKE_BALL1F3
	end	

	
F3Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F3RUINS_POKE_BALL2F3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F3RUINS_POKE_BALL2F3
	end	

UnlockDoorsF3:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F3RUINS_POKE_BALL1F3
	appear F3RUINS_POKE_BALL2F3	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 6, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



F3_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF3
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF3


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F3, -1
	object_event  2,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F3, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F3, -1
	object_event  7,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F3, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F3, -1
	object_event  5,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F3Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F3Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
