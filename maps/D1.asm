	object_const_def

D1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpD1:
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	warperD

D1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD1
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD1



	def_bg_events

	def_object_events
