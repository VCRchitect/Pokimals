; DO A CTRL+F AND REPLACE ALL OF THE C2 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C2RUINS_MONSTER1C2
	const C2RUINS_MONSTER2C2
	const C2RUINS_MONSTER3C2
	const C2RUINS_MONSTER4C2
	const C2RUINS_MONSTER5C2
	const C2RUINS_POKE_BALL1C2
	const C2RUINS_POKE_BALL2C2


C2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC2
	appear C2RUINS_POKE_BALL1C2
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC2
	appear C2RUINS_POKE_BALL2C2
	endcallback


BallDisappearC2:
	disappear C2RUINS_POKE_BALL1C2
	disappear C2RUINS_POKE_BALL2C2
	endcallback


RandomStairWarpC2:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warperC
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp C10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp CPREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1C2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC2
	ifequal 1, onebadgeC2
	ifequal 2, twobadgeC2
	ifequal 3, threebadgeC2
	ifequal 4, fourbadgeC2
	ifequal 5, fivebadgeC2
	ifequal 6, sixbadgeC2
	ifequal 7, sevenbadgeC2
	ifequal 8, eightbadgeC2
	end
	
Monster2C2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC2
	ifequal 1, onebadgeC2
	ifequal 2, twobadgeC2
	ifequal 3, threebadgeC2
	ifequal 4, fourbadgeC2
	ifequal 5, fivebadgeC2
	ifequal 6, sixbadgeC2
	ifequal 7, sevenbadgeC2
	ifequal 8, eightbadgeC2
	end

Monster3C2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC2
	ifequal 1, onebadgeC2
	ifequal 2, twobadgeC2
	ifequal 3, threebadgeC2
	ifequal 4, fourbadgeC2
	ifequal 5, fivebadgeC2
	ifequal 6, sixbadgeC2
	ifequal 7, sevenbadgeC2
	ifequal 8, eightbadgeC2
	end

Monster4C2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC2
	ifequal 1, onebadgeC2
	ifequal 2, twobadgeC2
	ifequal 3, threebadgeC2
	ifequal 4, fourbadgeC2
	ifequal 5, fivebadgeC2
	ifequal 6, sixbadgeC2
	ifequal 7, sevenbadgeC2
	ifequal 8, eightbadgeC2
	end

Monster5C2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC2
	ifequal 1, onebadgeC2
	ifequal 2, twobadgeC2
	ifequal 3, threebadgeC2
	ifequal 4, fourbadgeC2
	ifequal 5, fivebadgeC2
	ifequal 6, sixbadgeC2
	ifequal 7, sevenbadgeC2
	ifequal 8, eightbadgeC2
	end


nobadgeC2:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

onebadgeC2:
	RuinRandomC1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

twobadgeC2:
	RuinRandomC2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

threebadgeC2:
	RuinRandomC3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

fourbadgeC2:
	RuinRandomC4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

fivebadgeC2:
	RuinRandomC5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

sixbadgeC2:
	RuinRandomC6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

sevenbadgeC2:
	RuinRandomC7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end

eightbadgeC2:
	RuinRandomC8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC2
	end
	
C2Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C2RUINS_POKE_BALL1C2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C2RUINS_POKE_BALL1C2
	end	

	
C2Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C2RUINS_POKE_BALL2C2
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C2RUINS_POKE_BALL2C2
	end	

UnlockDoorsC2:
	playsound SFX_2ND_PLACE 
	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C2RUINS_POKE_BALL1C2
	appear C2RUINS_POKE_BALL2C2	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end

CButtonText:
	text "Room Clear!"
	done

C2_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC2
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC2


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C2, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C2, -1
	object_event  4,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C2, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C2, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C2, -1
	object_event  3,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C2Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C2Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
