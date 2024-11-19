; DO A CTRL+F AND REPLACE ALL OF THE C10 WITH THE ROOM NUMBER AND THE C WITH THE RUIN LETTER
	
	object_const_def
	const C10RUINS_MONSTER1C10
	const C10RUINS_MONSTER2C10
	const C10RUINS_MONSTER3C10
	const C10RUINS_MONSTER4C10
	const C10RUINS_MONSTER5C10
	const C10RUINS_POKE_BALL1C10
	const C10RUINS_POKE_BALL2C10


C10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC10
	appear C10RUINS_POKE_BALL1C10
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearC10
	appear C10RUINS_POKE_BALL2C10
	endcallback


BallDisappearC10:
	disappear C10RUINS_POKE_BALL1C10
	disappear C10RUINS_POKE_BALL2C10
	endcallback


RandomStairWarpC10a:
	warp CHEAL, 4,  4
	end

RandomStairWarpC10b:
	warp CMART, 4,  4
	end
	
Monster1C10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC10
	ifequal 1, onebadgeC10
	ifequal 2, twobadgeC10
	ifequal 3, threebadgeC10
	ifequal 4, fourbadgeC10
	ifequal 5, fivebadgeC10
	ifequal 6, sixbadgeC10
	ifequal 7, sevenbadgeC10
	ifequal 8, eightbadgeC10
	end
	
Monster2C10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC10
	ifequal 1, onebadgeC10
	ifequal 2, twobadgeC10
	ifequal 3, threebadgeC10
	ifequal 4, fourbadgeC10
	ifequal 5, fivebadgeC10
	ifequal 6, sixbadgeC10
	ifequal 7, sevenbadgeC10
	ifequal 8, eightbadgeC10
	end

Monster3C10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC10
	ifequal 1, onebadgeC10
	ifequal 2, twobadgeC10
	ifequal 3, threebadgeC10
	ifequal 4, fourbadgeC10
	ifequal 5, fivebadgeC10
	ifequal 6, sixbadgeC10
	ifequal 7, sevenbadgeC10
	ifequal 8, eightbadgeC10
	end

Monster4C10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC10
	ifequal 1, onebadgeC10
	ifequal 2, twobadgeC10
	ifequal 3, threebadgeC10
	ifequal 4, fourbadgeC10
	ifequal 5, fivebadgeC10
	ifequal 6, sixbadgeC10
	ifequal 7, sevenbadgeC10
	ifequal 8, eightbadgeC10
	end

Monster5C10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeC10
	ifequal 1, onebadgeC10
	ifequal 2, twobadgeC10
	ifequal 3, threebadgeC10
	ifequal 4, fourbadgeC10
	ifequal 5, fivebadgeC10
	ifequal 6, sixbadgeC10
	ifequal 7, sevenbadgeC10
	ifequal 8, eightbadgeC10
	end


nobadgeC10:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

onebadgeC10:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

twobadgeC10:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

threebadgeC10:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

fourbadgeC10:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

fivebadgeC10:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

sixbadgeC10:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

sevenbadgeC10:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end

eightbadgeC10:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINC_TARGET_DEFEATS, UnlockDoorsC10
	end
	
C10Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C10RUINS_POKE_BALL1C10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear C10RUINS_POKE_BALL1C10
	end	

	
C10Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear C10RUINS_POKE_BALL2C10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear C10RUINS_POKE_BALL2C10
	end	

UnlockDoorsC10:
	playsound SFX_FANFARE

	opentext
	writetext CButtonText
	promptbutton
	closetext
	appear C10RUINS_POKE_BALL1C10
	appear C10RUINS_POKE_BALL2C10	
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 2, 0, $0B
	changeblock 10, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


C10_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC10a
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC10a
	coord_event  10,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC10b
	coord_event  11,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC10b


	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1C10, -1
	object_event 11,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2C10, -1
	object_event 10,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3C10, -1
	object_event  3,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4C10, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5C10, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C10Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, C10Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
