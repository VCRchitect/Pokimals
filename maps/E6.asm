; DO A CTRL+F AND REPLACE ALL OF THE E6 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E6RUINS_MONSTER1E6
	const E6RUINS_MONSTER2E6
	const E6RUINS_MONSTER3E6
	const E6RUINS_MONSTER4E6
	const E6RUINS_MONSTER5E6
	const E6RUINS_POKE_BALL1E6
	const E6RUINS_POKE_BALL2E6


E6_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE6
	appear E6RUINS_POKE_BALL1E6
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE6
	appear E6RUINS_POKE_BALL2E6
	endcallback


BallDisappearE6:
	disappear E6RUINS_POKE_BALL1E6
	disappear E6RUINS_POKE_BALL2E6
	endcallback


RandomStairWarpE6:
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
	
Monster1E6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE6
	ifequal 1, onebadgeE6
	ifequal 2, twobadgeE6
	ifequal 3, threebadgeE6
	ifequal 4, fourbadgeE6
	ifequal 5, fivebadgeE6
	ifequal 6, sixbadgeE6
	ifequal 7, sevenbadgeE6
	ifequal 8, eightbadgeE6
	end
	
Monster2E6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE6
	ifequal 1, onebadgeE6
	ifequal 2, twobadgeE6
	ifequal 3, threebadgeE6
	ifequal 4, fourbadgeE6
	ifequal 5, fivebadgeE6
	ifequal 6, sixbadgeE6
	ifequal 7, sevenbadgeE6
	ifequal 8, eightbadgeE6
	end

Monster3E6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE6
	ifequal 1, onebadgeE6
	ifequal 2, twobadgeE6
	ifequal 3, threebadgeE6
	ifequal 4, fourbadgeE6
	ifequal 5, fivebadgeE6
	ifequal 6, sixbadgeE6
	ifequal 7, sevenbadgeE6
	ifequal 8, eightbadgeE6
	end

Monster4E6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE6
	ifequal 1, onebadgeE6
	ifequal 2, twobadgeE6
	ifequal 3, threebadgeE6
	ifequal 4, fourbadgeE6
	ifequal 5, fivebadgeE6
	ifequal 6, sixbadgeE6
	ifequal 7, sevenbadgeE6
	ifequal 8, eightbadgeE6
	end

Monster5E6:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE6
	ifequal 1, onebadgeE6
	ifequal 2, twobadgeE6
	ifequal 3, threebadgeE6
	ifequal 4, fourbadgeE6
	ifequal 5, fivebadgeE6
	ifequal 6, sixbadgeE6
	ifequal 7, sevenbadgeE6
	ifequal 8, eightbadgeE6
	end


nobadgeE6:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

onebadgeE6:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

twobadgeE6:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

threebadgeE6:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

fourbadgeE6:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

fivebadgeE6:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

sixbadgeE6:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

sevenbadgeE6:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end

eightbadgeE6:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE6
	end
	
E6Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E6RUINS_POKE_BALL1E6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E6RUINS_POKE_BALL1E6
	end	

	
E6Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E6RUINS_POKE_BALL2E6
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E6RUINS_POKE_BALL2E6
	end	

UnlockDoorsE6:
	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E6RUINS_POKE_BALL1E6
	appear E6RUINS_POKE_BALL2E6	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



E6_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE6
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE6


	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E6, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E6, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E6, -1
	object_event  2,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E6, -1
	object_event  5,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E6, -1
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E6Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E6Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
