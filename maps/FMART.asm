	object_const_def

FMART_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpFMART:
	warperF
	
RuinMartFScript:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifequal 0, .okay
	ifequal 1, .okay
	ifequal 2, .okay
	ifequal 3, .good
	ifequal 4, .good
	ifequal 5, .good
	ifequal 6, .great
	ifequal 7, .great
	ifequal 8, .great	
	
.okay
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

.good
	pokemart MARTTYPE_STANDARD, MART_ECRUTEAK
	closetext
	end

.great
	pokemart MARTTYPE_STANDARD, MART_INDIGO_PLATEAU
	closetext
	end

FMART_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFMART
	coord_event  7,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFMART

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_MERCHANT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinMartFScript, -1
