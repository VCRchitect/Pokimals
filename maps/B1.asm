	object_const_def

B1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpB1:
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	warperB

B1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB1
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB1



	def_bg_events

	def_object_events
