	object_const_def
	const THESITE_FRUIT_TREE1
	const THESITE_FRUIT_TREE2
	const THESITE_FRUIT_TREE3
	const THESITE_FRUIT_TREE4
	const THESITE_FRUIT_TREE5
	const THESITE_FRUIT_TREE6
	const THESITE_FRUIT_TREE7
	const THESITE_FRUIT_TREE8

TheSiteOutside_MapScripts:
	def_scene_scripts
	

	def_callbacks

.DummyScene: ; unreferenced
	end

	
FruitTree5:
	fruittree FRUITTREE_ROUTE_42_1

FruitTree6:
	fruittree FRUITTREE_ROUTE_42_2

FruitTree7:
	fruittree FRUITTREE_ROUTE_42_3

FruitTree8:
	fruittree FRUITTREE_ROUTE_29


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
	warp_event 10, 21, SITEGATE, 1
	warp_event 11, 21, SITEGATE, 2
	warp_event 10,  9, THESITEINSIDE1F, 5
	warp_event 11,  9, THESITEINSIDE1F, 6


	def_coord_events	

	def_bg_events
	bg_event  8, 12, BGEVENT_READ, TheSiteOutsideSign


	def_object_events
	object_event  6, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FruitTree5, -1
	object_event  7, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FruitTree6, -1
	object_event 14, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FruitTree7, -1
	object_event 15, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FruitTree8, -1
