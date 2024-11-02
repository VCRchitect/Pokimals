	object_const_def
	const ROUTE34_GRAMPS
	const ROUTE34_DAY_CARE_MON_1
	const ROUTE34_DAY_CARE_MON_2
	

IslandSouth_MapScripts:

	def_scene_scripts

	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .EggCheckCallback

.EggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	sjump .CheckMon1

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	sjump .CheckMon1

.CheckMon1:
	checkflag ENGINE_DAY_CARE_MAN_HAS_MON
	iffalse .HideMon1
	clearevent EVENT_DAY_CARE_MON_1
	sjump .CheckMon2

.HideMon1:
	setevent EVENT_DAY_CARE_MON_1
	sjump .CheckMon2

.CheckMon2:
	checkflag ENGINE_DAY_CARE_LADY_HAS_MON
	iffalse .HideMon2
	clearevent EVENT_DAY_CARE_MON_2
	endcallback

.HideMon2:
	setevent EVENT_DAY_CARE_MON_2
	endcallback

DayCareManScript_Outside:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	special DayCareManOutside
	waitbutton
	closetrainpic
	closetext
	ifequal TRUE, .end_fail
	clearflag ENGINE_DAY_CARE_MAN_HAS_EGG
	readmem VAR_FACING
	ifequal RIGHT, .walk_around_player
	applymovement ROUTE34_GRAMPS, Route34MovementData_DayCareManWalksBackInside
	playsound SFX_ENTER_DOOR
	disappear ROUTE34_GRAMPS
.end_fail
	end

.walk_around_player
	applymovement ROUTE34_GRAMPS, Route34MovementData_DayCareManWalksBackInside_WalkAroundPlayer
	playsound SFX_ENTER_DOOR
	disappear ROUTE34_GRAMPS
	end

DayCareMon1Script:
	opentext
	trainerpic OLDMAN
	special DayCareMon1
	closetrainpic
	closetext
	end

DayCareMon2Script:
	opentext
	trainerpic OLDMAN
	special DayCareMon2
	closetrainpic
	closetext
	end

Route34MovementData_DayCareManWalksBackInside:
	slow_step LEFT
	slow_step LEFT
	slow_step UP
	step_end

Route34MovementData_DayCareManWalksBackInside_WalkAroundPlayer:
	slow_step DOWN
	slow_step LEFT
	slow_step LEFT
	slow_step UP
	slow_step UP
	step_end

SilverRowSign:
	jumptext OldPeopleText

MoveDeleterYardSign:
	jumptext DeleterSignText
	

DayCareYardSign:
	jumptext DayCareSignText

NameRaterYardSign:
	jumptext NameRaterSignText

OldPeopleText:
	text "SILVER ROW"
	
	para "Where the elderly"
	line "bloom like steel"
	cont "magnolias"
	
	para "FORMERLY OLD"
	line "PEOPLE LANE"
	done
	
DayCareSignText:
	text "DAY-CARE"

	para "LET US RAISE YOUR"
	line "ANIMALS FOR YOU!"
	
	para "YOU WEREN'T GONNA"
	line "RAISE THE DAMN"
	cont "THINGS ANYWAY."
	done

	
DeleterSignText:
	text "MOVE DELETER AND"
	line "MOVE REMINDER'S"
	cont "HOUSE"
	done	

NameRaterSignText:
	text "THE FAMOUS NAME"
	line "RATER'S HOUSE"

	para "Eh, 2 out of 10. I"
	line "could have done a"
	cont "lot better."
	done	


IslandSouth_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event 11,  9, MOVEDELETERSHOUSE, 1
	warp_event  5,  5, ISLANDNAMERATER, 1
	warp_event 15,  4, DAY_CARE, 1
	warp_event 15,  5, DAY_CARE, 2
	warp_event 17,  5, DAY_CARE, 3
	warp_event 11,  3, SITEGATE, 3
	def_coord_events


	def_bg_events
	bg_event 12, 10, BGEVENT_READ, MoveDeleterYardSign
	bg_event 12,  6, BGEVENT_READ, DayCareYardSign
	bg_event  6,  6, BGEVENT_READ, NameRaterYardSign
	bg_event  6, 10, BGEVENT_READ, SilverRowSign



	def_object_events
	object_event 15,  8, SPRITE_DAY_CARE_MON_1, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareMon1Script, EVENT_DAY_CARE_MON_1
	object_event 15,  7, SPRITE_DAY_CARE_MON_2, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareMon2Script, EVENT_DAY_CARE_MON_2
	object_event 19,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Outside, EVENT_DAY_CARE_MAN_ON_ROUTE_34
