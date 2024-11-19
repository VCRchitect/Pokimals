; DO A CTRL+F AND REPLACE ALL OF THE E4 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E4RUINS_MONSTER1E4
	const E4RUINS_MONSTER2E4
	const E4RUINS_MONSTER3E4
	const E4RUINS_MONSTER4E4
	const E4RUINS_MONSTER5E4
	const E4RUINS_POKE_BALL1E4
	const E4RUINS_POKE_BALL2E4


E4_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE4
	appear E4RUINS_POKE_BALL1E4
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE4
	appear E4RUINS_POKE_BALL2E4
	endcallback


BallDisappearE4:
	disappear E4RUINS_POKE_BALL1E4
	disappear E4RUINS_POKE_BALL2E4
	endcallback


RandomStairWarpE4:
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
	
Monster1E4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE4
	ifequal 1, onebadgeE4
	ifequal 2, twobadgeE4
	ifequal 3, threebadgeE4
	ifequal 4, fourbadgeE4
	ifequal 5, fivebadgeE4
	ifequal 6, sixbadgeE4
	ifequal 7, sevenbadgeE4
	ifequal 8, eightbadgeE4
	end
	
Monster2E4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE4
	ifequal 1, onebadgeE4
	ifequal 2, twobadgeE4
	ifequal 3, threebadgeE4
	ifequal 4, fourbadgeE4
	ifequal 5, fivebadgeE4
	ifequal 6, sixbadgeE4
	ifequal 7, sevenbadgeE4
	ifequal 8, eightbadgeE4
	end

Monster3E4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE4
	ifequal 1, onebadgeE4
	ifequal 2, twobadgeE4
	ifequal 3, threebadgeE4
	ifequal 4, fourbadgeE4
	ifequal 5, fivebadgeE4
	ifequal 6, sixbadgeE4
	ifequal 7, sevenbadgeE4
	ifequal 8, eightbadgeE4
	end

Monster4E4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE4
	ifequal 1, onebadgeE4
	ifequal 2, twobadgeE4
	ifequal 3, threebadgeE4
	ifequal 4, fourbadgeE4
	ifequal 5, fivebadgeE4
	ifequal 6, sixbadgeE4
	ifequal 7, sevenbadgeE4
	ifequal 8, eightbadgeE4
	end

Monster5E4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE4
	ifequal 1, onebadgeE4
	ifequal 2, twobadgeE4
	ifequal 3, threebadgeE4
	ifequal 4, fourbadgeE4
	ifequal 5, fivebadgeE4
	ifequal 6, sixbadgeE4
	ifequal 7, sevenbadgeE4
	ifequal 8, eightbadgeE4
	end


nobadgeE4:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

onebadgeE4:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

twobadgeE4:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

threebadgeE4:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

fourbadgeE4:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

fivebadgeE4:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

sixbadgeE4:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

sevenbadgeE4:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end

eightbadgeE4:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE4
	end
	
E4Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E4RUINS_POKE_BALL1E4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E4RUINS_POKE_BALL1E4
	end	

	
E4Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E4RUINS_POKE_BALL2E4
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E4RUINS_POKE_BALL2E4
	end	

UnlockDoorsE4:
	playsound SFX_FANFARE

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E4RUINS_POKE_BALL1E4
	appear E4RUINS_POKE_BALL2E4	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


E4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpE4
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpE4


	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E4, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E4, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E4, -1
	object_event  2,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E4, -1
	object_event  7,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E4, -1
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E4Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E4Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
