	object_const_def

A6_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp6:
	readmem wBossRoomCount
	ifequal 3, .Boss
	addval 1
	writemem wBossRoomCount
	warper
.Boss
	warp A10, 4, 4
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	end
	

A6_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp6
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp6



	def_bg_events

	def_object_events
