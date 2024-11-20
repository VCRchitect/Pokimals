; DO A CTRL+F AND REPLACE ALL OF THE E2 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E2RUINS_MONSTER1E2
	const E2RUINS_MONSTER2E2
	const E2RUINS_MONSTER3E2
	const E2RUINS_MONSTER4E2
	const E2RUINS_MONSTER5E2
	const E2RUINS_POKE_BALL1E2
	const E2RUINS_POKE_BALL2E2


E2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE2
	appear E2RUINS_POKE_BALL1E2
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE2
	appear E2RUINS_POKE_BALL2E2
	endcallback


BallDisappearE2:
	disappear E2RUINS_POKE_BALL1E2
	disappear E2RUINS_POKE_BALL2E2
	endcallback


RandomStairWarpE2:
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
	
Monster1E2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE2
	ifequal 1, onebadgeE2
	ifequal 2, twobadgeE2
	ifequal 3, threebadgeE2
	ifequal 4, fourbadgeE2
	ifequal 5, fivebadgeE2
	ifequal 6, sixbadgeE2
	ifequal 7, sevenbadgeE2
	ifequal 8, eightbadgeE2
	end
	
Monster2E2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE2
	ifequal 1, onebadgeE2
	ifequal 2, twobadgeE2
	ifequal 3, threebadgeE2
	ifequal 4, fourbadgeE2
	ifequal 5, fivebadgeE2
	ifequal 6, sixbadgeE2
	ifequal 7, sevenbadgeE2
	ifequal 8, eightbadgeE2
	end

Monster3E2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE2
	ifequal 1, onebadgeE2
	ifequal 2, twobadgeE2
	ifequal 3, threebadgeE2
	ifequal 4, fourbadgeE2
	ifequal 5, fivebadgeE2
	ifequal 6, sixbadgeE2
	ifequal 7, sevenbadgeE2
	ifequal 8, eightbadgeE2
	end

Monster4E2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE2
	ifequal 1, onebadgeE2
	ifequal 2, twobadgeE2
	ifequal 3, threebadgeE2
	ifequal 4, fourbadgeE2
	ifequal 5, fivebadgeE2
	ifequal 6, sixbadgeE2
	ifequal 7, sevenbadgeE2
	ifequal 8, eightbadgeE2
	end

Monster5E2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE2
	ifequal 1, onebadgeE2
	ifequal 2, twobadgeE2
	ifequal 3, threebadgeE2
	ifequal 4, fourbadgeE2
	ifequal 5, fivebadgeE2
	ifequal 6, sixbadgeE2
	ifequal 7, sevenbadgeE2
	ifequal 8, eightbadgeE2
	end


nobadgeE2:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

onebadgeE2:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

twobadgeE2:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

threebadgeE2:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

fourbadgeE2:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

fivebadgeE2:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

sixbadgeE2:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

sevenbadgeE2:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end

eightbadgeE2:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE2
	end
	
E2Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E2RUINS_POKE_BALL1E2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E2RUINS_POKE_BALL1E2
	end	

	
E2Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E2RUINS_POKE_BALL2E2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E2RUINS_POKE_BALL2E2
	end	

UnlockDoorsE2:
	playsound SFX_2ND_PLACE 
	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E2RUINS_POKE_BALL1E2
	appear E2RUINS_POKE_BALL2E2	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end

EButtonText:
	text "Room Clear!"
	done

E2_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE2
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE2


	def_bg_events

	def_object_events
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E2, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E2, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E2, -1
	object_event  1,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E2, -1
	object_event  4,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E2, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E2Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E2Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
