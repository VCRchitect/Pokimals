	object_const_def
	const ARUINS_MONSTER1j
	const ARUINS_MONSTER2j
	const ARUINS_MONSTER3j
	const ARUINS_MONSTER4j
	const ARUINS_MONSTER5j
	const ARUINS_POKE_BALL1j
	const ARUINS_POKE_BALL2j
	

A11_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp11:
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
	
Monster1j:	
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
	
Monster2j:	
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

Monster3j:	
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

Monster4j:	
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

Monster5j:	
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

A11Item1:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2j
	disappear ARUINS_POKE_BALL1j
	end	

	
A11Item2:
	RuinItems
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext	
	disappear ARUINS_POKE_BALL2j
	disappear ARUINS_POKE_BALL1j
	end	

UnlockDoorsj:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	appear ARUINS_POKE_BALL1j
	appear ARUINS_POKE_BALL2j		
	changedoor 2, 0, $0B
	changedoor 6, 0, $0B
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	end


	
A11_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp11



	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1j, -1
	object_event  7,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2j, -1
	object_event  6,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3j, -1
	object_event  4,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4j, -1
	object_event  2,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5j, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A11Item1, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, A11Item2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
