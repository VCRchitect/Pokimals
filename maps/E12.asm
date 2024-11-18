; DO A CTRL+F AND REPLACE ALL OF THE E12 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E12RUINS_MONSTER1E12
	const E12RUINS_MONSTER2E12
	const E12RUINS_MONSTER3E12
	const E12RUINS_MONSTER4E12
	const E12RUINS_MONSTER5E12
	const E12RUINS_POKE_BALL1E12
	const E12RUINS_POKE_BALL2E12


E12_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE12
	appear E12RUINS_POKE_BALL1E12
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE12
	appear E12RUINS_POKE_BALL2E12
	endcallback


BallDisappearE12:
	disappear E12RUINS_POKE_BALL1E12
	disappear E12RUINS_POKE_BALL2E12
	endcallback


RandomStairWarpE12:
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
	
Monster1E12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE12
	ifequal 1, onebadgeE12
	ifequal 2, twobadgeE12
	ifequal 3, threebadgeE12
	ifequal 4, fourbadgeE12
	ifequal 5, fivebadgeE12
	ifequal 6, sixbadgeE12
	ifequal 7, sevenbadgeE12
	ifequal 8, eightbadgeE12
	end
	
Monster2E12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE12
	ifequal 1, onebadgeE12
	ifequal 2, twobadgeE12
	ifequal 3, threebadgeE12
	ifequal 4, fourbadgeE12
	ifequal 5, fivebadgeE12
	ifequal 6, sixbadgeE12
	ifequal 7, sevenbadgeE12
	ifequal 8, eightbadgeE12
	end

Monster3E12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE12
	ifequal 1, onebadgeE12
	ifequal 2, twobadgeE12
	ifequal 3, threebadgeE12
	ifequal 4, fourbadgeE12
	ifequal 5, fivebadgeE12
	ifequal 6, sixbadgeE12
	ifequal 7, sevenbadgeE12
	ifequal 8, eightbadgeE12
	end

Monster4E12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE12
	ifequal 1, onebadgeE12
	ifequal 2, twobadgeE12
	ifequal 3, threebadgeE12
	ifequal 4, fourbadgeE12
	ifequal 5, fivebadgeE12
	ifequal 6, sixbadgeE12
	ifequal 7, sevenbadgeE12
	ifequal 8, eightbadgeE12
	end

Monster5E12:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE12
	ifequal 1, onebadgeE12
	ifequal 2, twobadgeE12
	ifequal 3, threebadgeE12
	ifequal 4, fourbadgeE12
	ifequal 5, fivebadgeE12
	ifequal 6, sixbadgeE12
	ifequal 7, sevenbadgeE12
	ifequal 8, eightbadgeE12
	end


nobadgeE12:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

onebadgeE12:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

twobadgeE12:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

threebadgeE12:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

fourbadgeE12:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

fivebadgeE12:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

sixbadgeE12:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

sevenbadgeE12:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end

eightbadgeE12:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE12
	end
	
E12Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E12RUINS_POKE_BALL1E12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E12RUINS_POKE_BALL1E12
	end	

	
E12Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E12RUINS_POKE_BALL2E12
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E12RUINS_POKE_BALL2E12
	end	

UnlockDoorsE12:
	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E12RUINS_POKE_BALL1E12
	appear E12RUINS_POKE_BALL2E12	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



E12_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE12
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE12


	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E12, -1
	object_event  7,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E12, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E12, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E12, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E12, -1
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E12Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E12Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
