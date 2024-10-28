	object_const_def

AMART_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpAMART:
	warper
	
RuinMartScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_RUINA
	closetext
	end
	

AMART_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpAMART
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpAMART



	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_MERCHANT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinMartScript, -1
