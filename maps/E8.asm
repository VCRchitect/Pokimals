; DO A CTRL+F AND REPLACE ALL OF THE E8 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E8RUINS_MONSTER1E8
	const E8RUINS_MONSTER2E8
	const E8RUINS_MONSTER3E8
	const E8RUINS_MONSTER4E8
	const E8RUINS_MONSTER5E8
	const E8RUINS_POKE_BALL1E8
	const E8RUINS_POKE_BALL2E8


E8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE8
	appear E8RUINS_POKE_BALL1E8
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE8
	appear E8RUINS_POKE_BALL2E8
	endcallback


BallDisappearE8:
	disappear E8RUINS_POKE_BALL1E8
	disappear E8RUINS_POKE_BALL2E8
	endcallback


RandomStairWarpE8:
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
	
Monster1E8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE8
	ifequal 1, onebadgeE8
	ifequal 2, twobadgeE8
	ifequal 3, threebadgeE8
	ifequal 4, fourbadgeE8
	ifequal 5, fivebadgeE8
	ifequal 6, sixbadgeE8
	ifequal 7, sevenbadgeE8
	ifequal 8, eightbadgeE8
	end
	
Monster2E8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE8
	ifequal 1, onebadgeE8
	ifequal 2, twobadgeE8
	ifequal 3, threebadgeE8
	ifequal 4, fourbadgeE8
	ifequal 5, fivebadgeE8
	ifequal 6, sixbadgeE8
	ifequal 7, sevenbadgeE8
	ifequal 8, eightbadgeE8
	end

Monster3E8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE8
	ifequal 1, onebadgeE8
	ifequal 2, twobadgeE8
	ifequal 3, threebadgeE8
	ifequal 4, fourbadgeE8
	ifequal 5, fivebadgeE8
	ifequal 6, sixbadgeE8
	ifequal 7, sevenbadgeE8
	ifequal 8, eightbadgeE8
	end

Monster4E8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE8
	ifequal 1, onebadgeE8
	ifequal 2, twobadgeE8
	ifequal 3, threebadgeE8
	ifequal 4, fourbadgeE8
	ifequal 5, fivebadgeE8
	ifequal 6, sixbadgeE8
	ifequal 7, sevenbadgeE8
	ifequal 8, eightbadgeE8
	end

Monster5E8:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE8
	ifequal 1, onebadgeE8
	ifequal 2, twobadgeE8
	ifequal 3, threebadgeE8
	ifequal 4, fourbadgeE8
	ifequal 5, fivebadgeE8
	ifequal 6, sixbadgeE8
	ifequal 7, sevenbadgeE8
	ifequal 8, eightbadgeE8
	end


nobadgeE8:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

onebadgeE8:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

twobadgeE8:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

threebadgeE8:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

fourbadgeE8:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

fivebadgeE8:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

sixbadgeE8:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

sevenbadgeE8:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end

eightbadgeE8:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE8
	end
	
E8Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E8RUINS_POKE_BALL1E8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E8RUINS_POKE_BALL1E8
	end	

	
E8Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E8RUINS_POKE_BALL2E8
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E8RUINS_POKE_BALL2E8
	end	

UnlockDoorsE8:
	playsound SFX_2ND_PLACE 

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E8RUINS_POKE_BALL1E8
	appear E8RUINS_POKE_BALL2E8	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


E8_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE8
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE8


	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E8, -1
	object_event  8,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E8, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E8, -1
	object_event  4,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E8, -1
	object_event  2,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E8, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E8Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E8Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
