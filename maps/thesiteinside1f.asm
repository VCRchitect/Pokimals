	object_const_def

TheSiteInside1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
NPCScientistScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCIENTIST
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCYoungsterScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic YOUNGSTER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCSchoolBoyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCHOOLBOY
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCLassScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCCoolTrainerMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCCoolTrainerFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCBeautyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BEAUTY
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCPokemaniacScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEMANIAC
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCBugCatcherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
NPCReceptionistScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BEAUTY
	writetext TheSiteWelcome
	waitbutton
	closetrainpic
	closetext
	end


CafeScript:
	jumptext CafeSignText
	end

GameCornerScript:
	jumptext GameCornerSignText
	end

TheMartScript:
	jumptext MartSignText
	end

TheCenterScript:
	jumptext CenterSignText
	end

TheHallScript:
	jumptext TheHallSignText
	end

TheRuinsScript:
	jumptext TheRuinsSignText
	end



TheSiteWelcome:
	text "Hey there and"
	line "welcome!"
	
	para "This is The Site,"
	line "a place where the"
	
	para "mysteries of the"
	line "past become the"
	
	para "stability of the"
	line "future. Or so they"
	cont "make me say."
	done
	
CafeSignText:	
	text "THE SITE CAFE"

	para "Come enjoy our old"
	line "coffee and pricey"
	cont "sandwiches!"
	done
	
	
GameCornerSignText:
	text "THE GAME CORNER"
	
	para "This isn't the"
	line "corner your mom"
	cont "works every day."
	done
	
MartSignText:
	text "SITE-MART"
	
	para "Come check out the"
	line "selection of TMs!"
	
	para "It changes with"
	line "test you pass!"
	done
	
CenterSignText:
	text "THE ANIMAL CENTER"

	para "Ask us about the"
	line "leprosy discount!"
	done

TheRuinsSignText:
	text "ENTRANCE TO RUINS"

	para "This is where the"
	line "gameplay happens!"
	done

TheHallSignText:
	text "THE GREAT HALL"

	para "Don't confuse it"
	line "with The OK Hall."

	para "P.S. This is"
	line "where the GYM LEA-"
	
	para "I mean where the"
	line "INSTRUCTORS like"
	cont "to hang out."
	done



	
TheSiteInside1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22, 12, THESITEPOKECENTER1F, 1
	warp_event  3, 12, THESITEMART, 1
	warp_event  8, 12, THESITEGAMECORNER, 1
	warp_event 17, 12, THESITECAFE, 1
	warp_event 12, 21, THESITEOUTSIDE, 3
	warp_event 13, 21, THESITEOUTSIDE, 4
	warp_event 19,  4, THESITEINSIDERUINENTRANCE, 1
	warp_event 20,  4, THESITEINSIDERUINENTRANCE, 1
	warp_event  6,  4, THESITEINSIDETEACHERHALL, 1
	warp_event  5,  4, THESITEINSIDETEACHERHALL, 1


	

	def_coord_events

	def_bg_events
	bg_event 16, 12, BGEVENT_READ, CafeScript
	bg_event  9, 12, BGEVENT_READ, GameCornerScript
	bg_event  2, 12, BGEVENT_READ, TheMartScript
	bg_event 23, 12, BGEVENT_READ, TheCenterScript
	bg_event 18,  4, BGEVENT_READ, TheRuinsScript
	bg_event  7,  4, BGEVENT_READ, TheHallScript


	def_object_events
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCBugCatcherScript, -1
	object_event 17, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCTeacherScript, -1
	object_event  2, 16, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCLassScript, -1
	object_event 11, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCPokemaniacScript, -1
	object_event  3,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCSchoolBoyScript, -1
	object_event 16,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCYoungsterScript, -1
	object_event  6, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCBeautyScript, -1
	object_event 15,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCCoolTrainerFScript, -1
	object_event 14,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCCoolTrainerMScript, -1
	object_event 23, 16, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCScientistScript, -1
	object_event 12, 16, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NPCReceptionistScript, -1
	