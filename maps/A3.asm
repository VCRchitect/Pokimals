	object_const_def

A3_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp3:
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
	

A3_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp3
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp3



	def_bg_events

	def_object_events
