	object_const_def

CWILD_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end


CWILD_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events

	def_bg_events

	def_object_events
