	object_const_def
	const TEACHER3_JASON
	

Teacher3_MapScripts:
	def_scene_scripts

	def_callbacks

JasonScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic JASON
	checkevent EVENT_BEAT_JASON
	iftrue .FightDone
	writetext JasonIntroText
	waitbutton
	closetrainpic
	closetext
	winlosstext JasonWinLossText, 0
	loadtrainer JASON, JASON1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASON
	opentext
	writetext Text_ReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
.FightDone:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue .GotShadowBall
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	readmem wBadges
	addval 1
	writemem wBadges
	refreshscreen
	trainerpic JASON
	writetext JasonText_FogBadgeSpeech
	promptbutton
	closetrainpic
	verbosegiveitem TM_SHADOW_BALL
	iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
	refreshscreen
	trainerpic JASON
	writetext JasonText_ShadowBallSpeech
	waitbutton
	closetrainpic
	closetext
	end

.GotShadowBall:
	writetext JasonFightDoneText
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForShadowBall:
	closetrainpic
	closetext
	end


JasonIntroText:
	text "Rururughgh..."

	para "Grugh! Rah!"

	para "BLARGH!"
	done

JasonWinLossText:
	text "-Cough-"
	
	line "-Cough-"

	para "You hit me so hard"
	line "that I stopped"
	cont "choking."
	
	para "I owe ya one."
	done

Text_ReceivedFogBadge:
	text "<PLAYER> received"
	line "FOGBADGE."
	done

JasonText_FogBadgeSpeech:
	text "By having FOG-"
	line "BADGE, ANIMALs up"

	para "to L50 will obey"
	line "you."

	para "I want you to have"
	line "this too."
	done

JasonText_ShadowBallSpeech:
	text "It's SHADOW BALL."
	line "It causes damage"

	para "and may reduce"
	line "SPCL.DEF."

	para "Use it if it"
	line "appeals to you."
	done

JasonFightDoneText:
	text "I really need to"
	line "stop trying to eat"
	cont "whole chickens."
	done

	

Teacher3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, THESITEINSIDETEACHERHALL, 5
	warp_event  5,  5, THESITEINSIDETEACHERHALL, 5


	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_JASON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JasonScript, -1
