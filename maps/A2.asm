	object_const_def
	const ARUINS_MONSTER1
	const ARUINS_MONSTER2
	const ARUINS_MONSTER3
	const ARUINS_MONSTER4
	const ARUINS_MONSTER5
	const ARUINS_POKE_BALL1a
	const ARUINS_POKE_BALL2a


A2_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Ball1
	callback MAPCALLBACK_OBJECTS, .Ball2

	
.DummyScene:
	end


.Ball1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeara
	appear ARUINS_POKE_BALL1a
	endcallback

.Ball2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse BallDisappeara
	appear ARUINS_POKE_BALL2a
	endcallback

BallDisappeara:
	disappear ARUINS_POKE_BALL1a
	disappear ARUINS_POKE_BALL2a
	endcallback


RandomStairWarp2:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 3, .Split
	warper
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp A10, 6, 8
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	end
.Boss
	warp APREBOSS, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	
Monster1:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge
	ifequal 1, onebadge
	ifequal 2, twobadge
	ifequal 3, threebadge
	ifequal 4, fourbadge
	ifequal 5, fivebadge
	ifequal 6, sixbadge
	ifequal 7, sevenbadge
	ifequal 8, eightbadge
	end
	
Monster2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge
	ifequal 1, onebadge
	ifequal 2, twobadge
	ifequal 3, threebadge
	ifequal 4, fourbadge
	ifequal 5, fivebadge
	ifequal 6, sixbadge
	ifequal 7, sevenbadge
	ifequal 8, eightbadge
	end

Monster3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge
	ifequal 1, onebadge
	ifequal 2, twobadge
	ifequal 3, threebadge
	ifequal 4, fourbadge
	ifequal 5, fivebadge
	ifequal 6, sixbadge
	ifequal 7, sevenbadge
	ifequal 8, eightbadge
	end

Monster4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge
	ifequal 1, onebadge
	ifequal 2, twobadge
	ifequal 3, threebadge
	ifequal 4, fourbadge
	ifequal 5, fivebadge
	ifequal 6, sixbadge
	ifequal 7, sevenbadge
	ifequal 8, eightbadge
	end

Monster5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	readvar VAR_BADGES
	ifequal 0, nobadge
	ifequal 1, onebadge
	ifequal 2, twobadge
	ifequal 3, threebadge
	ifequal 4, fourbadge
	ifequal 5, fivebadge
	ifequal 6, sixbadge
	ifequal 7, sevenbadge
	ifequal 8, eightbadge
	end
	
	
nobadge:
	RuinRandomABase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

onebadge:
	RuinRandomA1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

twobadge:
	RuinRandomA2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

threebadge:
	RuinRandomA3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

fourbadge:
	RuinRandomA4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

fivebadge:
	RuinRandomA5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

sixbadge:
	RuinRandomA6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

sevenbadge:
	RuinRandomA7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end

eightbadge:
	RuinRandomA8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsA
	end	

A2Item1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL1a
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton
	closetext
	disappear ARUINS_POKE_BALL1a
	end	

A2Item2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ARUINS_POKE_BALL2a
	end	

.no_item
	opentext
	randomtext EmptyTable
	waitbutton
	closetext
	disappear ARUINS_POKE_BALL2a
	end	
	
UnlockDoorsA:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1a
	appear ARUINS_POKE_BALL2a
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end
	
ButtonText:
	text "Room Clear!"
	done

A2_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarp2
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarp2
	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_MERCHANT, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1, -1
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2, -1
	object_event  5,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3, -1
	object_event  5,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4, -1
	object_event  8,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5, -1
	object_event  6,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A2Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  3,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A2Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
