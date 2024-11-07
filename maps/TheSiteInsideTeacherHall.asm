	object_const_def

TheSiteInsideTeacherHall_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

Sign1Script:
	jumptext Sign1Text
	end

Sign2Script:
	jumptext Sign2Text
	end

Sign3Script:
	jumptext Sign3Text
	end

Sign4Script:
	jumptext Sign4Text
	end

Sign5Script:
	jumptext Sign5Text
	end

Sign6Script:
	jumptext Sign6Text
	end

Sign7Script:
	jumptext Sign7Text
	end

Sign8Script:
	jumptext Sign8Text
	end

SignE4Script:
	jumptext SignE4Text
	end

Sign1Text:	
	text "T-PAIN's Office"
	done

Sign2Text:	
	text "PEELY's Office"
	done

Sign3Text:	
	text "JASON's Office"
	done

Sign4Text:	
	text "LARA's Office"
	done

Sign5Text:	
	text "LINCOLN's Office"
	done

Sign6Text:	
	text "DIANA's Office"
	done

Sign7Text:	
	text "BIG BIRD's Office"
	done

Sign8Text:	
	text "KID ROCK's Office"
	done

SignE4Text:	
	text "PATH TO GLORY"
	
	para "It's just the way"
	line "to get to those"
	cont "ELITE FOUR nerds."
	done


TheSiteInsideTeacherHall_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7, 37, THESITEINSIDE1F, 10
	warp_event  6, 37, THESITEINSIDE1F, 19
	warp_event  2, 30, TEACHER1, 1
	warp_event 11, 30, TEACHER2, 1
	warp_event  2, 22, TEACHER3, 1
	warp_event 11, 22, TEACHER4, 1
	warp_event  2, 14, TEACHER5, 1
	warp_event 11, 14, TEACHER6, 1
	warp_event  2,  6, TEACHER7, 1
	warp_event 11,  6, TEACHER8, 1
	warp_event  6,  0, WILLS_ROOM, 1
	warp_event  7,  0, WILLS_ROOM, 1

	def_coord_events	


	def_bg_events
	bg_event  3, 30, BGEVENT_READ, Sign1Script
	bg_event 10, 30, BGEVENT_READ, Sign2Script
	bg_event  3, 22, BGEVENT_READ, Sign3Script
	bg_event 10, 22, BGEVENT_READ, Sign4Script
	bg_event  3, 14, BGEVENT_READ, Sign5Script
	bg_event 10, 14, BGEVENT_READ, Sign6Script
	bg_event  3,  6, BGEVENT_READ, Sign7Script
	bg_event 10,  6, BGEVENT_READ, Sign8Script
	bg_event  8,  0, BGEVENT_READ, SignE4Script

	def_object_events
