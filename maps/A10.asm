	object_const_def

A10_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp10:
	warper
	

A10_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp10
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarp10



	def_bg_events

	def_object_events
