	object_const_def
	const ARUINS_MONSTER1e
	const ARUINS_MONSTER2e
	const ARUINS_MONSTER3e
	const ARUINS_MONSTER4e
	const ARUINS_MONSTER5e
	const ARUINS_POKE_BALL1e
	const ARUINS_POKE_BALL2e


A6_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp6:
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
	
Monster1e:	
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
	
Monster2e:	
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

Monster3e:	
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

Monster4e:	
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

Monster5e:	
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

A6Item1:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2e
	disappear ARUINS_POKE_BALL1e
	end	
	
A6Item2:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2e
	disappear ARUINS_POKE_BALL1e
	end	

UnlockDoorse:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1e
	appear ARUINS_POKE_BALL2d	
	changedoor 2, 0, $0B
	changedoor 6, 0, $0B
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end
		

A6_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp6
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp6

	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp6
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp6



	def_bg_events

	def_object_events
	object_event  7,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1e, -1
	object_event  1,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2e, -1
	object_event  5,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3e, -1
	object_event  1,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4e, -1
	object_event  7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5e, -1
	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A6Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  3,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A6Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
