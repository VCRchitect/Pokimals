; DO A CTRL+F AND REPLACE ALL OF THE F12 WITH THE ROOM NUMBER AND THE F WITH THE RUIN LETTER
	
	object_const_def
	const F12RUINS_MONSTER1F12
	const F12RUINS_MONSTER2F12
	const F12RUINS_MONSTER3F12
	const F12RUINS_MONSTER4F12
	const F12RUINS_MONSTER5F12
	const F12RUINS_POKE_BALL1F12
	const F12RUINS_POKE_BALL2F12


F12_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF12
	appear F12RUINS_POKE_BALL1F12
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF12
	appear F12RUINS_POKE_BALL2F12
	endcallback


BallDisappearF12:
	disappear F12RUINS_POKE_BALL1F12
	disappear F12RUINS_POKE_BALL2F12
	endcallback


RandomStairWarpF12:
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
	
Monster1F12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF12
	ifequal 1, onebadgeF12
	ifequal 2, twobadgeF12
	ifequal 3, threebadgeF12
	ifequal 4, fourbadgeF12
	ifequal 5, fivebadgeF12
	ifequal 6, sixbadgeF12
	ifequal 7, sevenbadgeF12
	ifequal 8, eightbadgeF12
	end
	
Monster2F12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF12
	ifequal 1, onebadgeF12
	ifequal 2, twobadgeF12
	ifequal 3, threebadgeF12
	ifequal 4, fourbadgeF12
	ifequal 5, fivebadgeF12
	ifequal 6, sixbadgeF12
	ifequal 7, sevenbadgeF12
	ifequal 8, eightbadgeF12
	end

Monster3F12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF12
	ifequal 1, onebadgeF12
	ifequal 2, twobadgeF12
	ifequal 3, threebadgeF12
	ifequal 4, fourbadgeF12
	ifequal 5, fivebadgeF12
	ifequal 6, sixbadgeF12
	ifequal 7, sevenbadgeF12
	ifequal 8, eightbadgeF12
	end

Monster4F12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF12
	ifequal 1, onebadgeF12
	ifequal 2, twobadgeF12
	ifequal 3, threebadgeF12
	ifequal 4, fourbadgeF12
	ifequal 5, fivebadgeF12
	ifequal 6, sixbadgeF12
	ifequal 7, sevenbadgeF12
	ifequal 8, eightbadgeF12
	end

Monster5F12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF12
	ifequal 1, onebadgeF12
	ifequal 2, twobadgeF12
	ifequal 3, threebadgeF12
	ifequal 4, fourbadgeF12
	ifequal 5, fivebadgeF12
	ifequal 6, sixbadgeF12
	ifequal 7, sevenbadgeF12
	ifequal 8, eightbadgeF12
	end


nobadgeF12:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

onebadgeF12:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

twobadgeF12:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

threebadgeF12:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

fourbadgeF12:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

fivebadgeF12:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

sixbadgeF12:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

sevenbadgeF12:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end

eightbadgeF12:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINF_TARGET_DEFEATS, UnlockDoorsF12
	end
	
F12Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F12RUINS_POKE_BALL1F12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F12RUINS_POKE_BALL1F12
	end	

	
F12Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F12RUINS_POKE_BALL2F12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F12RUINS_POKE_BALL2F12
	end	

UnlockDoorsF12:
	playsound SFX_2ND_PLACE 

	opentext
	writetext FButtonText
	promptbutton
	closetext
	appear F12RUINS_POKE_BALL1F12
	appear F12RUINS_POKE_BALL2F12	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



F12_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF12
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF12


	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F12, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F12, -1
	object_event  1,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F12, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F12, -1
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F12, -1
	object_event  3,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F12Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F12Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
