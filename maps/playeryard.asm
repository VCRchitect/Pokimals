	object_const_def

PlayerYard_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end


PlayerYardSign:
	jumptext PlayerSignText
	
FruitTree3:
	fruittree FRUITTREE_ROUTE_37_3
	
FruitTree4:
	fruittree FRUITTREE_AZALEA_TOWN
	
	
PlayerSignText:
	text "<PLAYER>'s House"

	para "But you already"
	line "knew where you"
	cont "lived, right?"
	done
	


PlayerYard_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event  5,  7, PLAYERS_HOUSE_1F, 2

	def_coord_events


	def_bg_events
	bg_event  3,  9, BGEVENT_READ, PlayerYardSign


	def_object_events
	object_event  6,  8, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FruitTree3, -1
	object_event  7,  8, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FruitTree4, -1
