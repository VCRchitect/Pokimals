	object_const_def

B1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpB1:
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	warperB
	
RandomStairWarpB1b:
	refreshscreen
	opentext
	writetext RuinB1Text
	waitbutton
	closetext
	end
	
RuinB1Text:
	text "LET THE RAIN WASH"
	line "AWAY OUR FAILURE."
	done	

B1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB1
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpB1
	coord_event  4,  1, SCENE_RANDOMSTAIRS, RandomStairWarpB1b
	coord_event  5,  1, SCENE_RANDOMSTAIRS, RandomStairWarpB1b


	def_bg_events

	def_object_events
