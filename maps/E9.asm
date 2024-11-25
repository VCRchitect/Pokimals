; DO A CTRL+F AND REPLACE ALL OF THE E9 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E9RUINS_MONSTER1E9
	const E9RUINS_MONSTER2E9
	const E9RUINS_MONSTER3E9
	const E9RUINS_MONSTER4E9
	const E9RUINS_MONSTER5E9
	const E9RUINS_POKE_BALL1E9
	const E9RUINS_POKE_BALL2E9


E9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE9
	appear E9RUINS_POKE_BALL1E9
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE9
	appear E9RUINS_POKE_BALL2E9
	endcallback


BallDisappearE9:
	disappear E9RUINS_POKE_BALL1E9
	disappear E9RUINS_POKE_BALL2E9
	endcallback


RandomStairWarpE9:
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
	
Monster1E9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE9
	ifequal 1, onebadgeE9
	ifequal 2, twobadgeE9
	ifequal 3, threebadgeE9
	ifequal 4, fourbadgeE9
	ifequal 5, fivebadgeE9
	ifequal 6, sixbadgeE9
	ifequal 7, sevenbadgeE9
	ifequal 8, eightbadgeE9
	end
	
Monster2E9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE9
	ifequal 1, onebadgeE9
	ifequal 2, twobadgeE9
	ifequal 3, threebadgeE9
	ifequal 4, fourbadgeE9
	ifequal 5, fivebadgeE9
	ifequal 6, sixbadgeE9
	ifequal 7, sevenbadgeE9
	ifequal 8, eightbadgeE9
	end

Monster3E9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE9
	ifequal 1, onebadgeE9
	ifequal 2, twobadgeE9
	ifequal 3, threebadgeE9
	ifequal 4, fourbadgeE9
	ifequal 5, fivebadgeE9
	ifequal 6, sixbadgeE9
	ifequal 7, sevenbadgeE9
	ifequal 8, eightbadgeE9
	end

Monster4E9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE9
	ifequal 1, onebadgeE9
	ifequal 2, twobadgeE9
	ifequal 3, threebadgeE9
	ifequal 4, fourbadgeE9
	ifequal 5, fivebadgeE9
	ifequal 6, sixbadgeE9
	ifequal 7, sevenbadgeE9
	ifequal 8, eightbadgeE9
	end

Monster5E9:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE9
	ifequal 1, onebadgeE9
	ifequal 2, twobadgeE9
	ifequal 3, threebadgeE9
	ifequal 4, fourbadgeE9
	ifequal 5, fivebadgeE9
	ifequal 6, sixbadgeE9
	ifequal 7, sevenbadgeE9
	ifequal 8, eightbadgeE9
	end


nobadgeE9:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

onebadgeE9:
	RuinRandomE1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

twobadgeE9:
	RuinRandomE2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

threebadgeE9:
	RuinRandomE3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

fourbadgeE9:
	RuinRandomE4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

fivebadgeE9:
	RuinRandomE5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

sixbadgeE9:
	RuinRandomE6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

sevenbadgeE9:
	RuinRandomE7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end

eightbadgeE9:
	RuinRandomE8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE9
	end
	
E9Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E9RUINS_POKE_BALL1E9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E9RUINS_POKE_BALL1E9
	end	

	
E9Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E9RUINS_POKE_BALL2E9
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E9RUINS_POKE_BALL2E9
	end	

UnlockDoorsE9:
	playsound SFX_2ND_PLACE 

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E9RUINS_POKE_BALL1E9
	appear E9RUINS_POKE_BALL2E9	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


E9_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE9
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE9


	def_bg_events

	def_object_events
	object_event  2,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E9, -1
	object_event  5,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E9, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E9, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E9, -1
	object_event  7,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E9, -1
	object_event  3,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E9Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E9Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
