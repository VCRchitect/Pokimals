	object_const_def

A2_MapScripts:
	def_scene_scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	def_callbacks

.LockDoor:
	sdefer .DoorLocks
	end

.DummyScene: ; unreferenced
	end

.DoorLocks:
	lockdoor
	end

RandomStairWarp2:
	warper
	
StatueButton:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	opendoor
	end
	
ButtonText:
	text "A not so secret"
	line "button!"

	para "Hopefully the game"
	line "doesn't crash now."
	done


A2_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  2,  0, SCENE_RANDOMSTAIRS, RandomStairWarp2
	coord_event  6,  0, SCENE_RANDOMSTAIRS, RandomStairWarp2


	def_bg_events
	bg_event  2,  3, BGEVENT_READ, StatueButton

	def_object_events
