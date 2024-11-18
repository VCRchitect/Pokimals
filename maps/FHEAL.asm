	object_const_def

FHEAL_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
RuinFHealNurseScript:
	jumpstd RuinHealScript

RandomStairWarpFHEAL:
	warperF
	

FHEAL_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFHEAL
	coord_event  3,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFHEAL



	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_MERCHANT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinFHealNurseScript, -1
