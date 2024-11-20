; DO A CTRL+F AND REPLACE ALL OF THE E5 WITH THE ROOM NUMBER AND THE e WITH THE RUIN LETTER
	
	object_const_def
	const E5RUINS_MONSTER1E5
	const E5RUINS_MONSTER2E5
	const E5RUINS_MONSTER3E5
	const E5RUINS_MONSTER4E5
	const E5RUINS_MONSTER5E5
	const E5RUINS_POKE_BALL1E5
	const E5RUINS_POKE_BALL2E5


E5_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE5
	appear E5RUINS_POKE_BALL1E5
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE5
	appear E5RUINS_POKE_BALL2E5
	endcallback


BallDisappearE5:
	disappear E5RUINS_POKE_BALL1E5
	disappear E5RUINS_POKE_BALL2E5
	endcallback


RandomStairWarpE5:
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
	
Monster1E5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE5
	ifequal 1, onebadgeE5
	ifequal 2, twobadgeE5
	ifequal 3, threebadgeE5
	ifequal 4, fourbadgeE5
	ifequal 5, fivebadgeE5
	ifequal 6, sixbadgeE5
	ifequal 7, sevenbadgeE5
	ifequal 8, eightbadgeE5
	end
	
Monster2E5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE5
	ifequal 1, onebadgeE5
	ifequal 2, twobadgeE5
	ifequal 3, threebadgeE5
	ifequal 4, fourbadgeE5
	ifequal 5, fivebadgeE5
	ifequal 6, sixbadgeE5
	ifequal 7, sevenbadgeE5
	ifequal 8, eightbadgeE5
	end

Monster3E5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE5
	ifequal 1, onebadgeE5
	ifequal 2, twobadgeE5
	ifequal 3, threebadgeE5
	ifequal 4, fourbadgeE5
	ifequal 5, fivebadgeE5
	ifequal 6, sixbadgeE5
	ifequal 7, sevenbadgeE5
	ifequal 8, eightbadgeE5
	end

Monster4E5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE5
	ifequal 1, onebadgeE5
	ifequal 2, twobadgeE5
	ifequal 3, threebadgeE5
	ifequal 4, fourbadgeE5
	ifequal 5, fivebadgeE5
	ifequal 6, sixbadgeE5
	ifequal 7, sevenbadgeE5
	ifequal 8, eightbadgeE5
	end

Monster5E5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE5
	ifequal 1, onebadgeE5
	ifequal 2, twobadgeE5
	ifequal 3, threebadgeE5
	ifequal 4, fourbadgeE5
	ifequal 5, fivebadgeE5
	ifequal 6, sixbadgeE5
	ifequal 7, sevenbadgeE5
	ifequal 8, eightbadgeE5
	end


nobadgeE5:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

onebadgeE5:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

twobadgeE5:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

threebadgeE5:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

fourbadgeE5:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

fivebadgeE5:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

sixbadgeE5:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

sevenbadgeE5:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end

eightbadgeE5:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE5
	end
	
E5Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E5RUINS_POKE_BALL1E5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E5RUINS_POKE_BALL1E5
	end	

	
E5Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E5RUINS_POKE_BALL2E5
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E5RUINS_POKE_BALL2E5
	end	

UnlockDoorsE5:
	playsound SFX_2ND_PLACE 

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E5RUINS_POKE_BALL1E5
	appear E5RUINS_POKE_BALL2E5	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



E5_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE5
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE5


	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E5, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E5, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E5, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E5, -1
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E5, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E5Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E5Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
