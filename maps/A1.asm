	object_const_def

A1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp1:
	warper

A1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event  2,  5, NEW_BARK_TOWN, 2
	

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp1
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarp1



	def_bg_events

	def_object_events
