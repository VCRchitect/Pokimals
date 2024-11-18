	object_const_def
	const ERUINS_POKE_BALL1l
	const ERUINS_POKE_BALL2l
	

EPREBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpEPREBOSS:
	warp EBOSS, 4,  6
	end

EPreItem1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ERUINS_POKE_BALL1l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear ERUINS_POKE_BALL1l
	end	


EPreItem2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear ERUINS_POKE_BALL2l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear ERUINS_POKE_BALL2l
	end	

EPREBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpEPREBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpEPREBOSS


	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EPreItem1, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EPreItem2, -1
