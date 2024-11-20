; DO A CTRL+F AND REPLACE ALL OF THE E10 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const E10RUINS_MONSTER1E10
	const E10RUINS_MONSTER2E10
	const E10RUINS_MONSTER3E10
	const E10RUINS_MONSTER4E10
	const E10RUINS_MONSTER5E10
	const E10RUINS_POKE_BALL1E10
	const E10RUINS_POKE_BALL2E10


E10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE10
	appear E10RUINS_POKE_BALL1E10
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearE10
	appear E10RUINS_POKE_BALL2E10
	endcallback


BallDisappearE10:
	disappear E10RUINS_POKE_BALL1E10
	disappear E10RUINS_POKE_BALL2E10
	endcallback


RandomStairWarpE10a:
	warp EHEAL, 4,  4
	end

RandomStairWarpE10b:
	warp EMART, 4,  4
	end
	
Monster1E10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE10
	ifequal 1, onebadgeE10
	ifequal 2, twobadgeE10
	ifequal 3, threebadgeE10
	ifequal 4, fourbadgeE10
	ifequal 5, fivebadgeE10
	ifequal 6, sixbadgeE10
	ifequal 7, sevenbadgeE10
	ifequal 8, eightbadgeE10
	end
	
Monster2E10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE10
	ifequal 1, onebadgeE10
	ifequal 2, twobadgeE10
	ifequal 3, threebadgeE10
	ifequal 4, fourbadgeE10
	ifequal 5, fivebadgeE10
	ifequal 6, sixbadgeE10
	ifequal 7, sevenbadgeE10
	ifequal 8, eightbadgeE10
	end

Monster3E10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE10
	ifequal 1, onebadgeE10
	ifequal 2, twobadgeE10
	ifequal 3, threebadgeE10
	ifequal 4, fourbadgeE10
	ifequal 5, fivebadgeE10
	ifequal 6, sixbadgeE10
	ifequal 7, sevenbadgeE10
	ifequal 8, eightbadgeE10
	end

Monster4E10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE10
	ifequal 1, onebadgeE10
	ifequal 2, twobadgeE10
	ifequal 3, threebadgeE10
	ifequal 4, fourbadgeE10
	ifequal 5, fivebadgeE10
	ifequal 6, sixbadgeE10
	ifequal 7, sevenbadgeE10
	ifequal 8, eightbadgeE10
	end

Monster5E10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeE10
	ifequal 1, onebadgeE10
	ifequal 2, twobadgeE10
	ifequal 3, threebadgeE10
	ifequal 4, fourbadgeE10
	ifequal 5, fivebadgeE10
	ifequal 6, sixbadgeE10
	ifequal 7, sevenbadgeE10
	ifequal 8, eightbadgeE10
	end


nobadgeE10:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

onebadgeE10:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

twobadgeE10:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

threebadgeE10:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

fourbadgeE10:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

fivebadgeE10:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

sixbadgeE10:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

sevenbadgeE10:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end

eightbadgeE10:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsE10
	end
	
E10Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E10RUINS_POKE_BALL1E10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear E10RUINS_POKE_BALL1E10
	end	

	
E10Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear E10RUINS_POKE_BALL2E10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear E10RUINS_POKE_BALL2E10
	end	

UnlockDoorsE10:
	playsound SFX_2ND_PLACE 

	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear E10RUINS_POKE_BALL1E10
	appear E10RUINS_POKE_BALL2E10	
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



E10_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE10a
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE10a
	coord_event  10,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE10b
	coord_event  11,  0, SCENE_RANDOMSTAIRS, RandomStairWarpE10b


	def_bg_events

	def_object_events
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1E10, -1
	object_event  6,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2E10, -1
	object_event 11,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3E10, -1
	object_event  1,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4E10, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5E10, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E10Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, E10Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
