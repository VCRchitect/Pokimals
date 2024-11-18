	object_const_def
	const DRUINS_POKE_BALL1l
	const DRUINS_POKE_BALL2l
	

DPREBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpDPREBOSS:
	warp DBOSS, 4,  6
	end

DPreItem1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear DRUINS_POKE_BALL1l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear DRUINS_POKE_BALL1l
	end	


DPreItem2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear DRUINS_POKE_BALL2l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear DRUINS_POKE_BALL2l
	end	

DPREBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpDPREBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpDPREBOSS


	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DPreItem1, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DPreItem2, -1
