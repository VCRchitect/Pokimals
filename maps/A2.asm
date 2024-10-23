	object_const_def
	const ARUINS_MONSTER1
	const ARUINS_MONSTER2
	const ARUINS_MONSTER3
	const ARUINS_MONSTER4
	const ARUINS_MONSTER5

A2_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .LoadBaddies

.DummyScene:
	end

.LoadBaddies
	disappear ARUINS_MONSTER1
	disappear ARUINS_MONSTER2
	disappear ARUINS_MONSTER3
	disappear ARUINS_MONSTER4
	disappear ARUINS_MONSTER5
	random 2
	ifnotequal 0, .NoSpawn
	appear ARUINS_MONSTER1
	appear ARUINS_MONSTER2
	appear ARUINS_MONSTER3
	appear ARUINS_MONSTER4
	appear ARUINS_MONSTER5
.NoSpawn
	endcallback


RandomStairWarp2:
	warper
	
	
Monster1:	
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
    readmem wRoomDefeatedCount
	ifequal 3, .StatueButton
	loadmem wRoomDefeatedCount, 3
	end

.StatueButton:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	changedoor 2, 0, $72
	changedoor 7, 0, $72
	end


Monster2:	
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end

Monster3:	
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end

Monster4:	
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end

Monster5:	
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
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

	def_object_events
	object_event 3,  2, SPRITE_CLICKER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1, -1
	object_event 4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2, -1
	object_event 5,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3, -1
	object_event 6,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster4, -1
	object_event 7,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster5, -1
