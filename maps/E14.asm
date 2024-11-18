; DO A CTRL+F AND REPLACE ALL OF THE E14 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E14RUINS_MONSTER1E14
	const E14RUINS_MONSTER2E14
	const E14RUINS_MONSTER3E14
	const E14RUINS_MONSTER4E14
	const E14RUINS_MONSTER5E14
	const E14RUINS_POKE_BALL1E14
	const E14RUINS_POKE_BALL2E14


E14_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE14
	appear E14RUINS_POKE_BALL1E14
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE14
	appear E14RUINS_POKE_BALL2E14
	endcallback


BallDisappearE14:
	disappear E14RUINS_POKE_BALL1E14
	disappear E14RUINS_POKE_BALL2E14
	endcallback


RandomStairWarpE14:
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
	
Monster1E14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE14
	ifequal 1, onebadgeE14
	ifequal 2, twobadgeE14
	ifequal 3, threebadgeE14
	ifequal 4, fourbadgeE14
	ifequal 5, fivebadgeE14
	ifequal 6, sixbadgeE14
	ifequal 7, sevenbadgeE14
	ifequal 8, eightbadgeE14
	end
	
Monster2E14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE14
	ifequal 1, onebadgeE14
	ifequal 2, twobadgeE14
	ifequal 3, threebadgeE14
	ifequal 4, fourbadgeE14
	ifequal 5, fivebadgeE14
	ifequal 6, sixbadgeE14
	ifequal 7, sevenbadgeE14
	ifequal 8, eightbadgeE14
	end

Monster3E14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE14
	ifequal 1, onebadgeE14
	ifequal 2, twobadgeE14
	ifequal 3, threebadgeE14
	ifequal 4, fourbadgeE14
	ifequal 5, fivebadgeE14
	ifequal 6, sixbadgeE14
	ifequal 7, sevenbadgeE14
	ifequal 8, eightbadgeE14
	end

Monster4E14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE14
	ifequal 1, onebadgeE14
	ifequal 2, twobadgeE14
	ifequal 3, threebadgeE14
	ifequal 4, fourbadgeE14
	ifequal 5, fivebadgeE14
	ifequal 6, sixbadgeE14
	ifequal 7, sevenbadgeE14
	ifequal 8, eightbadgeE14
	end

Monster5E14:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE14
	ifequal 1, onebadgeE14
	ifequal 2, twobadgeE14
	ifequal 3, threebadgeE14
	ifequal 4, fourbadgeE14
	ifequal 5, fivebadgeE14
	ifequal 6, sixbadgeE14
	ifequal 7, sevenbadgeE14
	ifequal 8, eightbadgeE14
	end


nobadgeE14:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

onebadgeE14:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

twobadgeE14:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

threebadgeE14:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

fourbadgeE14:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

fivebadgeE14:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

sixbadgeE14:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

sevenbadgeE14:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end

eightbadgeE14:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE14
	end
	
E14Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E14RUINS_POKE_BALL1E14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E14RUINS_POKE_BALL1E14
	end	

	
E14Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E14RUINS_POKE_BALL2E14
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E14RUINS_POKE_BALL2E14
	end	

UnlockDoorsE14:
	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E14RUINS_POKE_BALL1E14
	appear E14RUINS_POKE_BALL2E14	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



E14_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpE14
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpE14


	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E14, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E14, -1
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E14, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E14, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E14, -1
	object_event  3,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E14Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E14Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
