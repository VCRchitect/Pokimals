; DO A CTRL+F AND REPLACE ALL OF THE E11 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E11RUINS_MONSTER1E11
	const E11RUINS_MONSTER2E11
	const E11RUINS_MONSTER3E11
	const E11RUINS_MONSTER4E11
	const E11RUINS_MONSTER5E11
	const E11RUINS_POKE_BALL1E11
	const E11RUINS_POKE_BALL2E11


E11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE11
	appear E11RUINS_POKE_BALL1E11
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE11
	appear E11RUINS_POKE_BALL2E11
	endcallback


BallDisappearE11:
	disappear E11RUINS_POKE_BALL1E11
	disappear E11RUINS_POKE_BALL2E11
	endcallback


RandomStairWarpE11:
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
	
Monster1E11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE11
	ifequal 1, onebadgeE11
	ifequal 2, twobadgeE11
	ifequal 3, threebadgeE11
	ifequal 4, fourbadgeE11
	ifequal 5, fivebadgeE11
	ifequal 6, sixbadgeE11
	ifequal 7, sevenbadgeE11
	ifequal 8, eightbadgeE11
	end
	
Monster2E11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE11
	ifequal 1, onebadgeE11
	ifequal 2, twobadgeE11
	ifequal 3, threebadgeE11
	ifequal 4, fourbadgeE11
	ifequal 5, fivebadgeE11
	ifequal 6, sixbadgeE11
	ifequal 7, sevenbadgeE11
	ifequal 8, eightbadgeE11
	end

Monster3E11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE11
	ifequal 1, onebadgeE11
	ifequal 2, twobadgeE11
	ifequal 3, threebadgeE11
	ifequal 4, fourbadgeE11
	ifequal 5, fivebadgeE11
	ifequal 6, sixbadgeE11
	ifequal 7, sevenbadgeE11
	ifequal 8, eightbadgeE11
	end

Monster4E11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE11
	ifequal 1, onebadgeE11
	ifequal 2, twobadgeE11
	ifequal 3, threebadgeE11
	ifequal 4, fourbadgeE11
	ifequal 5, fivebadgeE11
	ifequal 6, sixbadgeE11
	ifequal 7, sevenbadgeE11
	ifequal 8, eightbadgeE11
	end

Monster5E11:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE11
	ifequal 1, onebadgeE11
	ifequal 2, twobadgeE11
	ifequal 3, threebadgeE11
	ifequal 4, fourbadgeE11
	ifequal 5, fivebadgeE11
	ifequal 6, sixbadgeE11
	ifequal 7, sevenbadgeE11
	ifequal 8, eightbadgeE11
	end


nobadgeE11:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

onebadgeE11:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

twobadgeE11:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

threebadgeE11:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

fourbadgeE11:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

fivebadgeE11:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

sixbadgeE11:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

sevenbadgeE11:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end

eightbadgeE11:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE11
	end
	
E11Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E11RUINS_POKE_BALL1E11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E11RUINS_POKE_BALL1E11
	end	

	
E11Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E11RUINS_POKE_BALL2E11
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E11RUINS_POKE_BALL2E11
	end	

UnlockDoorsE11:
	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E11RUINS_POKE_BALL1E11
	appear E11RUINS_POKE_BALL2E11	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



E11_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE11
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE11


	def_bg_events

	def_object_events
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E11, -1
	object_event  8,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E11, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E11, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E11, -1
	object_event  1,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E11, -1
	object_event  4,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E11Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E11Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
