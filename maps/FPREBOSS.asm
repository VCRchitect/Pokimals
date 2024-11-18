	object_const_def
	const FRUINS_POKE_BALL1l
	const FRUINS_POKE_BALL2l
	

FPREBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpFPREBOSS:
	warp FBOSS, 4,  6
	end

FPreItem1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear FRUINS_POKE_BALL1l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear FRUINS_POKE_BALL1l
	end	


FPreItem2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear FRUINS_POKE_BALL2l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear FRUINS_POKE_BALL2l
	end	

FPREBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFPREBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFPREBOSS


	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FPreItem1, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FPreItem2, -1
