	object_const_def
	const ARUINS_MONSTER1
	const ARUINS_MONSTER2
	const ARUINS_MONSTER3
	const ARUINS_MONSTER4
	const ARUINS_MONSTER5

A2_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks
	callback MAPCALLBACK_OBJECTS, .LoadBaddies

.DummyScene:
	end

.LoadBaddies
	random 0
	ifnotequal 0, .NoSpawn
	appear ARUINS_MONSTER4
	appear ARUINS_MONSTER5
.NoSpawn
	disappear ARUINS_MONSTER4
	disappear ARUINS_MONSTER5
	endcallback


RandomStairWarp2:
	readmem wBossRoomCount
	ifequal 3, .Boss
	addval 1
	writemem wBossRoomCount
	warper
.Boss
	warp A10, 4, 4
	end
	
Monster1:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomA	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER1
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end
	
Monster2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomA	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

Monster3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomB	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER3
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

Monster4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomA	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER4
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

Monster5:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomB	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER5
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

UnlockDoors:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	changedoor 2, 0, $72
	changedoor 7, 0, $72
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
	coord_event  6,  4, SCENE_RANDOMSTAIRS, RandomStairWarp2
	coord_event 10,  4, SCENE_RANDOMSTAIRS, RandomStairWarp2


	def_bg_events

	def_object_events
	object_event  7,  6, SPRITE_MERCHANT, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1, -1
	object_event  8,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2, -1
	object_event  9,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3, -1
	object_event 10,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4, -1
	object_event 11,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5, -1
