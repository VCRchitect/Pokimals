	object_const_def

A1_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

RandomStairWarp1:
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount	
	readmem wSplitRoomCount
	setval 0
	writemem wSplitRoomCount
	readmem wBossRoomCount
	setval 0
	writemem wBossRoomCount
	warper

RandomStairWarp1b:
	refreshscreen
	opentext
	writetext RuinA1Text
	waitbutton
	closetext
	end
	
RuinA1Text:
	text "THE WINDS ERODE"
	line "THE PAST..."
	done

A1_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	
	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarp1
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarp1

	coord_event  4,  1, SCENE_RANDOMSTAIRS, RandomStairWarp1b
	coord_event  5,  1, SCENE_RANDOMSTAIRS, RandomStairWarp1b



	def_bg_events

	def_object_events
