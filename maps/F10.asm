; DO A CTRL+F AND REPLACE ALL OF THE F10 WITH THE ROOM NUMBER AND THE E WITH THE RUIN LETTER
	
	object_const_def
	const F10RUINS_MONSTER1F10
	const F10RUINS_MONSTER2F10
	const F10RUINS_MONSTER3F10
	const F10RUINS_MONSTER4F10
	const F10RUINS_MONSTER5F10
	const F10RUINS_POKE_BALL1F10
	const F10RUINS_POKE_BALL2F10


F10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

.DummyScene: ; unreferenced
	end

.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF10
	appear F10RUINS_POKE_BALL1F10
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappearF10
	appear F10RUINS_POKE_BALL2F10
	endcallback


BallDisappearF10:
	disappear F10RUINS_POKE_BALL1F10
	disappear F10RUINS_POKE_BALL2F10
	endcallback


RandomStairWarpF10a:
	warp FHEAL, 4,  4
	end

RandomStairWarpF10b:
	warp FMART, 4,  4
	end
	
Monster1F10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF10
	ifequal 1, onebadgeF10
	ifequal 2, twobadgeF10
	ifequal 3, threebadgeF10
	ifequal 4, fourbadgeF10
	ifequal 5, fivebadgeF10
	ifequal 6, sixbadgeF10
	ifequal 7, sevenbadgeF10
	ifequal 8, eightbadgeF10
	end
	
Monster2F10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF10
	ifequal 1, onebadgeF10
	ifequal 2, twobadgeF10
	ifequal 3, threebadgeF10
	ifequal 4, fourbadgeF10
	ifequal 5, fivebadgeF10
	ifequal 6, sixbadgeF10
	ifequal 7, sevenbadgeF10
	ifequal 8, eightbadgeF10
	end

Monster3F10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF10
	ifequal 1, onebadgeF10
	ifequal 2, twobadgeF10
	ifequal 3, threebadgeF10
	ifequal 4, fourbadgeF10
	ifequal 5, fivebadgeF10
	ifequal 6, sixbadgeF10
	ifequal 7, sevenbadgeF10
	ifequal 8, eightbadgeF10
	end

Monster4F10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF10
	ifequal 1, onebadgeF10
	ifequal 2, twobadgeF10
	ifequal 3, threebadgeF10
	ifequal 4, fourbadgeF10
	ifequal 5, fivebadgeF10
	ifequal 6, sixbadgeF10
	ifequal 7, sevenbadgeF10
	ifequal 8, eightbadgeF10
	end

Monster5F10:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadgeF10
	ifequal 1, onebadgeF10
	ifequal 2, twobadgeF10
	ifequal 3, threebadgeF10
	ifequal 4, fourbadgeF10
	ifequal 5, fivebadgeF10
	ifequal 6, sixbadgeF10
	ifequal 7, sevenbadgeF10
	ifequal 8, eightbadgeF10
	end


nobadgeF10:
	RuinRandomFBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

onebadgeF10:
	RuinRandomF1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

twobadgeF10:
	RuinRandomF2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

threebadgeF10:
	RuinRandomF3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

fourbadgeF10:
	RuinRandomF4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

fivebadgeF10:
	RuinRandomF5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

sixbadgeF10:
	RuinRandomF6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

sevenbadgeF10:
	RuinRandomF7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end

eightbadgeF10:
	RuinRandomF8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINE_TARGET_DEFEATS, UnlockDoorsF10
	end
	
F10Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F10RUINS_POKE_BALL1F10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton	
	
	closetext
	disappear F10RUINS_POKE_BALL1F10
	end	

	
F10Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear F10RUINS_POKE_BALL2F10
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton		
	closetext
	disappear F10RUINS_POKE_BALL2F10
	end	

UnlockDoorsF10:
	opentext
	writetext EButtonText
	promptbutton
	closetext
	appear F10RUINS_POKE_BALL1F10
	appear F10RUINS_POKE_BALL2F10	
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



F10_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF10a
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF10a
	coord_event  10,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF10b
	coord_event  11,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF10b

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1F10, -1
	object_event  6,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2F10, -1
	object_event 11,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3F10, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4F10, -1
	object_event 10,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5F10, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F10Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, F10Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
