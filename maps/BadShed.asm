	object_const_def
	const BADSHED_GRUNT_1
	const BADSHED_GRUNT_2
	
BadShed_MapScripts:
	def_scene_scripts
	scene_script .BadShedFight ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED
	def_callbacks

.BadShedFight:
	sdefer .BedShedFightScript
	end

.DummyScene:
	end
	
.BedShedFightScript
	refreshscreen
	opentext
	trainerpic GRUNTM
	writetext WeGotYou
	waitbutton
	randomtext GruntText
	waitbutton
	closetrainpic
	closetext
	winlosstext GruntWinLossText1, 0
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	reloadmapafterbattle
	refreshscreen
	applymovement BADSHED_GRUNT_1, CherrygroveAbuseMovement
	playsound SFX_TACKLE
	applymovement BADSHED_GRUNT_1, CherrygroveAbuseMovement
	playsound SFX_TACKLE
	refreshscreen
	opentext
	trainerpic GRUNTM
	randomtext GruntText
	waitbutton
	closetrainpic
	closetext
	winlosstext GruntWinLossText2, 0
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	reloadmapafterbattle
	refreshscreen
	applymovement BADSHED_GRUNT_2, CherrygroveAbuseMovement2
	playsound SFX_TACKLE
	applymovement BADSHED_GRUNT_2, CherrygroveAbuseMovement2
	playsound SFX_TACKLE
	special FadeBlackQuickly
	special FadeOutMusic
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	pause 20
	playsound SFX_TACKLE
	pause 20
	playsound SFX_DOUBLESLAP
	pause 15
	playsound SFX_DOUBLESLAP
	pause 15
	playsound SFX_BEAT_UP
	pause 15	
	warp PLAYERS_HOUSE_2F, 3, 3
	end

CherrygroveAbuseMovement:
	fix_facing
	big_step LEFT
	big_step RIGHT
	step_end
	
CherrygroveAbuseMovement2:
	fix_facing
	big_step RIGHT
	big_step LEFT
	step_end
	
WeGotYou:
	text "JOSE warned you."
	done
	
GruntWinLossText1:
	text "This is bad."
	line "JOSE'll kill us."
	done

GruntWinLossText2:
	text "Well, that sucks."
	line "Time to job hunt."
	done


Grunt1:
	end

Grunt2:
	end	
	
BadShed_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Grunt1, -1
	object_event  1,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Grunt2, -1
