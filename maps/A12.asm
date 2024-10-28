	object_const_def
	const ARUINS_MONSTER1k
	const ARUINS_MONSTER2k
	const ARUINS_MONSTER3k
	const ARUINS_MONSTER4k
	const ARUINS_MONSTER5k
	const ARUINS_POKE_BALL1k
	const ARUINS_POKE_BALL2k
	

A12_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp12:
	readmem wSplitRoomCount
	addval 1
	writemem wSplitRoomCount
	ifequal 6, .Split
	warper
.Split
	readmem wBossRoomCount
	addval 1
	writemem wBossRoomCount
	ifequal 2, .Boss
	warp A10, 4, 4
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
	
Monster1k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomA	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER1
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsB
	end
	
Monster2k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomA	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsB
	end

Monster3k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomB	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER3
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsB
	end

Monster4k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomA	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER4
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsB
	end

Monster5k:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomB	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_MONSTER5
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsB
	end
	
A12Item1:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2k
	disappear ARUINS_POKE_BALL1k
	end	


	
A12Item2:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2k
	disappear ARUINS_POKE_BALL1k
	end	
	
UnlockDoorsk:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1k
	appear ARUINS_POKE_BALL2k		
	changedoor 2, 0, $0B
	changedoor 6, 0, $0B
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


	
A12_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp12



	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1k, -1
	object_event  6,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2k, -1
	object_event  8,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3k, -1
	object_event  3,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4k, -1
	object_event  1,  1, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5k, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A12Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A12Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
