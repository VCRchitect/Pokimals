; DO A CTRL+F AND REPLACE ALL OF THE F2 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F2RUINS_MONSTER1F2
	const F2RUINS_MONSTER2F2
	const F2RUINS_MONSTER3F2
	const F2RUINS_MONSTER4F2
	const F2RUINS_MONSTER5F2
	const F2RUINS_POKE_BALL1F2
	const F2RUINS_POKE_BALL2F2


F2_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF2
	appear F2RUINS_POKE_BALL1F2
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF2
	appear F2RUINS_POKE_BALL2F2
	endcallback


BallDisappearF2:
	disappear F2RUINS_POKE_BALL1F2
	disappear F2RUINS_POKE_BALL2F2
	endcallback


RandomStairWarpF2:
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
	
Monster1F2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF2
	ifequal 1, onebadgeF2
	ifequal 2, twobadgeF2
	ifequal 3, threebadgeF2
	ifequal 4, fourbadgeF2
	ifequal 5, fivebadgeF2
	ifequal 6, sixbadgeF2
	ifequal 7, sevenbadgeF2
	ifequal 8, eightbadgeF2
	end
	
Monster2F2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF2
	ifequal 1, onebadgeF2
	ifequal 2, twobadgeF2
	ifequal 3, threebadgeF2
	ifequal 4, fourbadgeF2
	ifequal 5, fivebadgeF2
	ifequal 6, sixbadgeF2
	ifequal 7, sevenbadgeF2
	ifequal 8, eightbadgeF2
	end

Monster3F2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF2
	ifequal 1, onebadgeF2
	ifequal 2, twobadgeF2
	ifequal 3, threebadgeF2
	ifequal 4, fourbadgeF2
	ifequal 5, fivebadgeF2
	ifequal 6, sixbadgeF2
	ifequal 7, sevenbadgeF2
	ifequal 8, eightbadgeF2
	end

Monster4F2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF2
	ifequal 1, onebadgeF2
	ifequal 2, twobadgeF2
	ifequal 3, threebadgeF2
	ifequal 4, fourbadgeF2
	ifequal 5, fivebadgeF2
	ifequal 6, sixbadgeF2
	ifequal 7, sevenbadgeF2
	ifequal 8, eightbadgeF2
	end

Monster5F2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF2
	ifequal 1, onebadgeF2
	ifequal 2, twobadgeF2
	ifequal 3, threebadgeF2
	ifequal 4, fourbadgeF2
	ifequal 5, fivebadgeF2
	ifequal 6, sixbadgeF2
	ifequal 7, sevenbadgeF2
	ifequal 8, eightbadgeF2
	end


nobadgeF2:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

onebadgeF2:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

twobadgeF2:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

threebadgeF2:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

fourbadgeF2:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

fivebadgeF2:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

sixbadgeF2:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

sevenbadgeF2:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end

eightbadgeF2:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF2
	end
	
F2Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F2RUINS_POKE_BALL1F2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F2RUINS_POKE_BALL1F2
	end	

	
F2Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F2RUINS_POKE_BALL2F2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F2RUINS_POKE_BALL2F2
	end	

UnlockDoorsF2:
	playsound SFX_2ND_PLACE 
	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F2RUINS_POKE_BALL1F2
	appear F2RUINS_POKE_BALL2F2	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end

FButtonText:
	text "Room Clear!"
	done

F2_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF2
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF2


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F2, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F2, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F2, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F2, -1
	object_event  1,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F2, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F2Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F2Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
