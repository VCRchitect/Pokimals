	object_const_def

C1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarpC1:
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	warperC

RandomStairWarpC1b:
	refreshscreen
	opentext
	writetext RuinC1Text
	waitbutton
	closetext
	end
	
RuinC1Text:
	text "LET THE SUN BURN"
	line "AWAY OUR SINS."
	done	

C1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC1
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpC1
	coord_event  4,  1, SCENE_RANDOMSTAIRS, RandomStairWarpC1b
	coord_event  5,  1, SCENE_RANDOMSTAIRS, RandomStairWarpC1b


	def_bg_events

	def_object_events
