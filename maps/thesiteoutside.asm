	object_const_def

TheSiteOutside_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end


TheSiteOutsideSign:
	jumptext TheSiteOutsideSignText
	
		
TheSiteOutsideSignText:
	text "THE SITE"

	para "Unearthing a"
	line "Better Tomorrow"
	done
	

TheSiteOutside_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event 11, 21, SITEGATE, 1
	warp_event 10, 21, SITEGATE, 1
	warp_event 9, 20, THESITEINSIDE1F, 5
	warp_event 10, 20, THESITEINSIDE1F, 6


	def_coord_events	

	def_bg_events
	bg_event 10, 16, BGEVENT_READ, TheSiteOutsideSign


	def_object_events
