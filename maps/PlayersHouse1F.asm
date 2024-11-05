	object_const_def
	const PLAYERSHOUSE1F_GRAMPS1
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
MeetGrampsLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetGrampsRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_GRAMPS1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_GRAMPS1, GrampsTurnsTowardPlayerMovement
	sjump MeetGrampsScript

.OnRight:
	applymovement PLAYERSHOUSE1F_GRAMPS1, GrampsWalksToPlayerMovement
MeetGrampsScript:
	refreshscreen
	opentext
	writetext Greeting
	waitbutton
	setscene SCENE_FINISHED
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	writetext ComeHomeForDSTText
	waitbutton
	writetext IGotYouText
	waitbutton
	verbosegiveitem EXP_SHARE
	writetext InheritanceText
	setevent EVENT_MADE_LETTAH_APPEAR_IN_RUINS
	setflag ENGINE_UNLOCKED_LETTAHS_A_TO_K
	setflag ENGINE_UNLOCKED_LETTAHS_L_TO_R
	setflag ENGINE_UNLOCKED_LETTAHS_S_TO_W
	setflag ENGINE_UNLOCKED_LETTAHS_X_TO_Z
	waitbutton
	closetext
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_GRAMPS1, LEFT
	end


GrampsTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end

GrampsWalksToPlayerMovement:
	slow_step RIGHT
	step_end

GrampsTurnsBackMovement:
	turn_head LEFT
	step_end

GrampsWalksBackMovement:
	slow_step LEFT
	step_end


GrampsScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end
	

NeighborScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	writetext NeighborText
	waitbutton
	closetrainpic
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

Greeting:
	text "Hey, Dipshit."
	line "How's it going?"
	done

IsItDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

ComeHomeForDSTText:
	text "Come home to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time,"
	
	para "Or if you need to"
	line "hear me ramble."
	done

IGotYouText:
	text "Oh yeah, I found"
	line "this in the yard"
	cont "today."
	
	para "You can have it."
	
	para "You know how I"
	line "feel about sharing"
	cont "and stuff."
	done
	
InheritanceText:
	text "Consider that your"
	line "inheritance since"
	para "I spent everything"
	line "on CIGARETTEs and"
	cont "nudie mags, hehe."
	done

NeighborText:
	text "<PLAY_G>, your"
	line "grandpa may be a"

	para "little kooky most"
	line "of the time, but"

	para "he loves you a"
	line "whole, whole lot."
	done

PlayersHouse1FStoveText:
	text "Gramps' specialty!"

	para "Burnt Toast!"
	done

PlayersHouse1FSinkText:
	text "The sink smells"
	line "like egg farts."
	cont "I hate it here."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge..."

	para "Box Wine and"
	line "tap water!"
	done

PlayersHouse1FTVText:
	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train..."

	para "I wish I were a"
	line "hobo too!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, PLAYERYARD, 1
	warp_event  7,  7, PLAYERYARD, 1
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1


	def_coord_events
	coord_event  8,  4, SCENE_DEFAULT, MeetGrampsLeftScript
	coord_event  9,  4, SCENE_DEFAULT, MeetGrampsRightScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrampsScript, -1
	object_event  4,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NeighborScript, -1
