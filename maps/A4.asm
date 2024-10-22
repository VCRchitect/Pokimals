	object_const_def

A4_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp4:
	warper
	

A4_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp4
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp4



	def_bg_events

	def_object_events
