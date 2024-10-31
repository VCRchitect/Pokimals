	object_const_def

PlayerYard_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end


PlayerYardSign:
	jumptext PlayerSignText
	
	
	
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
