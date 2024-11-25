; DO A CTRL+F AND REPLACE ALL OF THE E7 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E7RUINS_MONSTER1E7
	const E7RUINS_MONSTER2E7
	const E7RUINS_MONSTER3E7
	const E7RUINS_MONSTER4E7
	const E7RUINS_MONSTER5E7
	const E7RUINS_POKE_BALL1E7
	const E7RUINS_POKE_BALL2E7


E7_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE7
	appear E7RUINS_POKE_BALL1E7
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE7
	appear E7RUINS_POKE_BALL2E7
	endcallback


BallDisappearE7:
	disappear E7RUINS_POKE_BALL1E7
	disappear E7RUINS_POKE_BALL2E7
	endcallback


RandomStairWarpE7:
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
	
Monster1E7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE7
	ifequal 1, onebadgeE7
	ifequal 2, twobadgeE7
	ifequal 3, threebadgeE7
	ifequal 4, fourbadgeE7
	ifequal 5, fivebadgeE7
	ifequal 6, sixbadgeE7
	ifequal 7, sevenbadgeE7
	ifequal 8, eightbadgeE7
	end
	
Monster2E7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE7
	ifequal 1, onebadgeE7
	ifequal 2, twobadgeE7
	ifequal 3, threebadgeE7
	ifequal 4, fourbadgeE7
	ifequal 5, fivebadgeE7
	ifequal 6, sixbadgeE7
	ifequal 7, sevenbadgeE7
	ifequal 8, eightbadgeE7
	end

Monster3E7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE7
	ifequal 1, onebadgeE7
	ifequal 2, twobadgeE7
	ifequal 3, threebadgeE7
	ifequal 4, fourbadgeE7
	ifequal 5, fivebadgeE7
	ifequal 6, sixbadgeE7
	ifequal 7, sevenbadgeE7
	ifequal 8, eightbadgeE7
	end

Monster4E7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE7
	ifequal 1, onebadgeE7
	ifequal 2, twobadgeE7
	ifequal 3, threebadgeE7
	ifequal 4, fourbadgeE7
	ifequal 5, fivebadgeE7
	ifequal 6, sixbadgeE7
	ifequal 7, sevenbadgeE7
	ifequal 8, eightbadgeE7
	end

Monster5E7:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	readvar VAR_BADGES
	ifequal 0, nobadgeE7
	ifequal 1, onebadgeE7
	ifequal 2, twobadgeE7
	ifequal 3, threebadgeE7
	ifequal 4, fourbadgeE7
	ifequal 5, fivebadgeE7
	ifequal 6, sixbadgeE7
	ifequal 7, sevenbadgeE7
	ifequal 8, eightbadgeE7
	end


nobadgeE7:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

onebadgeE7:
	RuinRandomE1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

twobadgeE7:
	RuinRandomE2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

threebadgeE7:
	RuinRandomE3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

fourbadgeE7:
	RuinRandomE4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

fivebadgeE7:
	RuinRandomE5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

sixbadgeE7:
	RuinRandomE6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

sevenbadgeE7:
	RuinRandomE7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end

eightbadgeE7:
	RuinRandomE8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE7
	end
	
E7Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E7RUINS_POKE_BALL1E7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E7RUINS_POKE_BALL1E7
	end	

	
E7Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E7RUINS_POKE_BALL2E7
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E7RUINS_POKE_BALL2E7
	end	

UnlockDoorsE7:
	playsound SFX_2ND_PLACE 

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E7RUINS_POKE_BALL1E7
	appear E7RUINS_POKE_BALL2E7	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end



E7_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  2, SCENE_RANDOMSTAIRS, RandomStairWarpE7
	coord_event  5,  2, SCENE_RANDOMSTAIRS, RandomStairWarpE7


	def_bg_events

	def_object_events
	object_event  5,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E7, -1
	object_event  7,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E7, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E7, -1
	object_event  2,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E7, -1
	object_event  1,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E7, -1
	object_event  2,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E7Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E7Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
