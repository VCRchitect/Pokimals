	object_const_def
	const ARUINS_MONSTER1c
	const ARUINS_MONSTER2c
	const ARUINS_MONSTER3c
	const ARUINS_MONSTER4c
	const ARUINS_MONSTER5c
	const ARUINS_POKE_BALL1c
	const ARUINS_POKE_BALL2c
	

A4_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp4:
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
	
Monster1c:	
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
	
Monster2c:	
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

Monster3c:	
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

Monster4c:	
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

Monster5c:	
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

A4Item1:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2c
	disappear ARUINS_POKE_BALL1c
	end	

	
A4Item2:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2c
	disappear ARUINS_POKE_BALL1c
	end	


UnlockDoorsc:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1c
	appear ARUINS_POKE_BALL2c	
	changedoor 2, 4, $0B
	changedoor 14, 4, $0B
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end
	

A4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  4, SCENE_RANDOMSTAIRS, RandomStairWarp4
	coord_event  3,  4, SCENE_RANDOMSTAIRS, RandomStairWarp4
	
	coord_event 14,  4, SCENE_RANDOMSTAIRS, RandomStairWarp4
	coord_event 15,  4, SCENE_RANDOMSTAIRS, RandomStairWarp4



	def_bg_events

	def_object_events
	object_event 13,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1c, -1
	object_event  8, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2c, -1
	object_event 15,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3c, -1
	object_event  7,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4c, -1
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5c, -1
	object_event  6, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A4Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event 11, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A4Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
