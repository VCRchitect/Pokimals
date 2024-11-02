	object_const_def

TheSiteOutside_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end


TheSiteOutsideSign:
	jumptext TheSiteOutsideSignText
	

RandomStairWarpSO:
	warp A1, 2, 4
	end	
		
TheSiteOutsideSignText:
	text "THE SITE"

	para "Unearthing a"
	line "Better Tomorrow"
	done
	

TheSiteOutside_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event 11, 21, SITEGATE, 2
	warp_event 10, 21, SITEGATE, 1


	def_coord_events
	coord_event 10,  9, SCENE_RANDOMSTAIRS, RandomStairWarpSO
	coord_event 11,  9, SCENE_RANDOMSTAIRS, RandomStairWarpSO
	

	def_bg_events
	bg_event 10, 16, BGEVENT_READ, TheSiteOutsideSign


	def_object_events
