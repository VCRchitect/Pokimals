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
	loadtrainer GRUNTM, GRUNTM_2
	startbattle
	reloadmapafterbattle
	refreshscreen
	applymovement BADSHED_GRUNT_2, CherrygroveAbuseMovement
	playsound SFX_TACKLE
	applymovement BADSHED_GRUNT_2, CherrygroveAbuseMovement
	playsound SFX_TACKLE
	special FadeBlackQuickly
	pause 20
	warp THESITEINSIDE1F, 3, 3
	end

CherrygroveAbuseMovement:
	fix_facing
	big_step LEFT
	big_step RIGHT
	step_end
	
	
GruntWinLossText1:
	text "This is bad."
	done

GruntWinLossText2:
	text "Well, that sucks."	
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
