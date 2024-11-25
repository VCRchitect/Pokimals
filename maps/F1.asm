	object_const_def

F1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpF1:
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	warperF

RandomStairWarpF1b:
	refreshscreen
	opentext
	writetext RuinF1Text
	waitbutton
	closetext
	end
	
RuinF1Text:
	text "LET OUR FORTUNES"
	line "REWARD THE BOLD."
	done	

F1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF1
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpF1
	coord_event  4,  1, SCENE_RANDOMSTAIRS, RandomStairWarpF1b
	coord_event  5,  1, SCENE_RANDOMSTAIRS, RandomStairWarpF1b

	def_bg_events

	def_object_events
