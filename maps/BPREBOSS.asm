	object_const_def
	const BRUINS_POKE_BALL1l
	const BRUINS_POKE_BALL2l
	

BPREBOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpBPREBOSS:
	warp BBOSS, 4,  6
	end

BPreItem1:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear BRUINS_POKE_BALL1l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear BRUINS_POKE_BALL1l
	end	


BPreItem2:
	RuinItems
	iffalse .no_item
	opentext
	verbosegiveitem ITEM_FROM_MEM
	closetext
	disappear BRUINS_POKE_BALL2l
	end	

.no_item
	opentext
	randomtext EmptyTable
	closetext
	disappear BRUINS_POKE_BALL2l
	end	

BPREBOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpBPREBOSS
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpBPREBOSS


	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BPreItem1, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BPreItem2, -1
