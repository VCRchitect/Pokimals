	object_const_def

D1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpD1:
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	warperD
	
RandomStairWarpD1b:
	refreshscreen
	opentext
	writetext RuinD1Text
	waitbutton
	closetext
	end
	
RuinD1Text:
	text "LET THE ICE CHILL"
	line "OUR BURNING RAGE."
	done		

D1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD1
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpD1
	coord_event  4,  1, SCENE_RANDOMSTAIRS, RandomStairWarpD1b
	coord_event  5,  1, SCENE_RANDOMSTAIRS, RandomStairWarpD1b


	def_bg_events

	def_object_events
