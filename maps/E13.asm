; DO A CTRL+F AND REPLACE ALL OF THE E13 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E13RUINS_MONSTER1E13
	const E13RUINS_MONSTER2E13
	const E13RUINS_MONSTER3E13
	const E13RUINS_MONSTER4E13
	const E13RUINS_MONSTER5E13
	const E13RUINS_POKE_BALL1E13
	const E13RUINS_POKE_BALL2E13


E13_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE13
	appear E13RUINS_POKE_BALL1E13
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE13
	appear E13RUINS_POKE_BALL2E13
	endcallback


BallDisappearE13:
	disappear E13RUINS_POKE_BALL1E13
	disappear E13RUINS_POKE_BALL2E13
	endcallback


RandomStairWarpE13:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperE
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp E10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp EPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1E13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE13
	ifequal 1, onebadgeE13
	ifequal 2, twobadgeE13
	ifequal 3, threebadgeE13
	ifequal 4, fourbadgeE13
	ifequal 5, fivebadgeE13
	ifequal 6, sixbadgeE13
	ifequal 7, sevenbadgeE13
	ifequal 8, eightbadgeE13
	end
	
Monster2E13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE13
	ifequal 1, onebadgeE13
	ifequal 2, twobadgeE13
	ifequal 3, threebadgeE13
	ifequal 4, fourbadgeE13
	ifequal 5, fivebadgeE13
	ifequal 6, sixbadgeE13
	ifequal 7, sevenbadgeE13
	ifequal 8, eightbadgeE13
	end

Monster3E13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE13
	ifequal 1, onebadgeE13
	ifequal 2, twobadgeE13
	ifequal 3, threebadgeE13
	ifequal 4, fourbadgeE13
	ifequal 5, fivebadgeE13
	ifequal 6, sixbadgeE13
	ifequal 7, sevenbadgeE13
	ifequal 8, eightbadgeE13
	end

Monster4E13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE13
	ifequal 1, onebadgeE13
	ifequal 2, twobadgeE13
	ifequal 3, threebadgeE13
	ifequal 4, fourbadgeE13
	ifequal 5, fivebadgeE13
	ifequal 6, sixbadgeE13
	ifequal 7, sevenbadgeE13
	ifequal 8, eightbadgeE13
	end

Monster5E13:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE13
	ifequal 1, onebadgeE13
	ifequal 2, twobadgeE13
	ifequal 3, threebadgeE13
	ifequal 4, fourbadgeE13
	ifequal 5, fivebadgeE13
	ifequal 6, sixbadgeE13
	ifequal 7, sevenbadgeE13
	ifequal 8, eightbadgeE13
	end


nobadgeE13:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

onebadgeE13:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

twobadgeE13:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

threebadgeE13:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

fourbadgeE13:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

fivebadgeE13:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

sixbadgeE13:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

sevenbadgeE13:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end

eightbadgeE13:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE13
	end
	
E13Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E13RUINS_POKE_BALL1E13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E13RUINS_POKE_BALL1E13
	end	

	
E13Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E13RUINS_POKE_BALL2E13
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E13RUINS_POKE_BALL2E13
	end	

UnlockDoorsE13:
	playsound SFX_2ND_PLACE 

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E13RUINS_POKE_BALL1E13
	appear E13RUINS_POKE_BALL2E13	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



E13_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE13
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE13


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E13, -1
	object_event  5,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E13, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E13, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E13, -1
	object_event  5,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E13, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E13Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E13Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
