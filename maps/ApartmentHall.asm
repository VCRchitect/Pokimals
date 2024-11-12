	object_const_def
	const APARTMENTHALL_NPC1
	const APARTMENTHALL_NPC2
	const APARTMENTHALL_NPC3

ApartmentHall_MapScripts:
	def_scene_scripts

	def_callbacks

NPCCoolTrainerMAptHall:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCCoolTrainerFAptHall:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCSuperNerdAptHall:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

SignScript1:
	opentext
	writetext Sign1
	waitbutton
	closetext
	end

SignScript2:
	opentext
	writetext Sign2
	waitbutton
	closetext
	end
	
SignScript3:
	opentext
	writetext Sign3
	waitbutton
	closetext
	end
	
SignScript4:
	opentext
	writetext Sign4
	waitbutton
	closetext
	end
	
SignScript5:
	opentext
	writetext Sign5
	waitbutton
	closetext
	end
	
SignScript6:
	opentext
	writetext Sign6
	waitbutton
	closetext
	end
	
SignScript7:
	opentext
	writetext Sign7
	waitbutton
	closetext
	end


Sign1:
	text "ROOM 101"
	line "VACANT"
	done

Sign2:
	text "ROOM 102"
	line "DO NOT DISTURB"
	done

Sign3:
	text "ROOM 103"
	line "Useless NPCs"
	done

Sign4:
	text "ROOM 104"
	line "KURT'S APARTMENT"
	
	para "Someone scribbled"
	line "on the sign."
	
	para "'Old man Kurt"
	line "loves BALLs!'"
	done

Sign5:
	text "ROOM 105"
	line "ANIMAL BARBER"
	
	para "'I'll even cut"
	line "hair where there"
	cont "is none!'"
	done

Sign6:
	text "ROOM 106"
	line "More Useless NPCs"
	done

Sign7:
	text "A NORMAL, REGULAR,"
	line "MAINTENANCE CLOSET"
	done


ApartmentHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  2, APARTMENTS123, 1
	warp_event  6,  2, APARTMENTS123, 3
	warp_event 22,  2, APARTMENTS123, 5
	warp_event 18,  2, APARTMENTS789, 1
	warp_event 10,  2, APARTMENTS789, 3
	warp_event 14,  2, APARTMENTS789, 5
	warp_event  3,  5, THESITEINSIDE1F, 11
	warp_event  2,  5, THESITEINSIDE1F, 11
	warp_event 26, 2, WEIRDCLOSET, 1



	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, SignScript1
	bg_event  7,  2, BGEVENT_READ, SignScript2
	bg_event 11,  2, BGEVENT_READ, SignScript3
	bg_event 15,  2, BGEVENT_READ, SignScript4
	bg_event 19,  2, BGEVENT_READ, SignScript5
	bg_event 23,  2, BGEVENT_READ, SignScript6
	bg_event 27,  2, BGEVENT_READ, SignScript7
	

	def_object_events
	object_event  3,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NPCCoolTrainerMAptHall, -1
	object_event 28,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NPCCoolTrainerFAptHall, -1
	object_event 12,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NPCSuperNerdAptHall, -1

