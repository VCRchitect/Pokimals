; DO A CTRL+F AND REPLACE ALL OF THE E3 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E3RUINS_MONSTER1E3
	const E3RUINS_MONSTER2E3
	const E3RUINS_MONSTER3E3
	const E3RUINS_MONSTER4E3
	const E3RUINS_MONSTER5E3
	const E3RUINS_POKE_BALL1E3
	const E3RUINS_POKE_BALL2E3


E3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE3
	appear E3RUINS_POKE_BALL1E3
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE3
	appear E3RUINS_POKE_BALL2E3
	endcallback


BallDisappearE3:
	disappear E3RUINS_POKE_BALL1E3
	disappear E3RUINS_POKE_BALL2E3
	endcallback


RandomStairWarpE3:
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
	
Monster1E3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE3
	ifequal 1, onebadgeE3
	ifequal 2, twobadgeE3
	ifequal 3, threebadgeE3
	ifequal 4, fourbadgeE3
	ifequal 5, fivebadgeE3
	ifequal 6, sixbadgeE3
	ifequal 7, sevenbadgeE3
	ifequal 8, eightbadgeE3
	end
	
Monster2E3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE3
	ifequal 1, onebadgeE3
	ifequal 2, twobadgeE3
	ifequal 3, threebadgeE3
	ifequal 4, fourbadgeE3
	ifequal 5, fivebadgeE3
	ifequal 6, sixbadgeE3
	ifequal 7, sevenbadgeE3
	ifequal 8, eightbadgeE3
	end

Monster3E3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE3
	ifequal 1, onebadgeE3
	ifequal 2, twobadgeE3
	ifequal 3, threebadgeE3
	ifequal 4, fourbadgeE3
	ifequal 5, fivebadgeE3
	ifequal 6, sixbadgeE3
	ifequal 7, sevenbadgeE3
	ifequal 8, eightbadgeE3
	end

Monster4E3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE3
	ifequal 1, onebadgeE3
	ifequal 2, twobadgeE3
	ifequal 3, threebadgeE3
	ifequal 4, fourbadgeE3
	ifequal 5, fivebadgeE3
	ifequal 6, sixbadgeE3
	ifequal 7, sevenbadgeE3
	ifequal 8, eightbadgeE3
	end

Monster5E3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE3
	ifequal 1, onebadgeE3
	ifequal 2, twobadgeE3
	ifequal 3, threebadgeE3
	ifequal 4, fourbadgeE3
	ifequal 5, fivebadgeE3
	ifequal 6, sixbadgeE3
	ifequal 7, sevenbadgeE3
	ifequal 8, eightbadgeE3
	end


nobadgeE3:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

onebadgeE3:
	RuinRandomE1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

twobadgeE3:
	RuinRandomE2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

threebadgeE3:
	RuinRandomE3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

fourbadgeE3:
	RuinRandomE4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

fivebadgeE3:
	RuinRandomE5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

sixbadgeE3:
	RuinRandomE6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

sevenbadgeE3:
	RuinRandomE7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end

eightbadgeE3:
	RuinRandomE8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE3
	end
	
E3Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E3RUINS_POKE_BALL1E3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E3RUINS_POKE_BALL1E3
	end	

	
E3Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E3RUINS_POKE_BALL2E3
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E3RUINS_POKE_BALL2E3
	end	

UnlockDoorsE3:
	playsound SFX_2ND_PLACE 

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E3RUINS_POKE_BALL1E3
	appear E3RUINS_POKE_BALL2E3	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 6, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


E3_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE3
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE3


	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E3, -1
	object_event  7,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E3, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E3, -1
	object_event  1,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E3, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E3, -1
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E3Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  5,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E3Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
