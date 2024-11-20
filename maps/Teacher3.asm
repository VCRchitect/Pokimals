	object_const_def
	const TEACHER3_JASON
	

Teacher3_MapScripts:
	def_scene_scripts

	def_callbacks

JasonScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .GoAwayJason
	checkevent EVENT_BEAT_JASON
	iftrue .FightDone
	faceplayer
	refreshscreen	
	special PlaceMoneyTopRight		
	trainerpic JASON	
	writetext JasonIntroText
	yesorno
	iffalse .Refused
	readvar VAR_BADGES
	ifequal 0, .Zero
	ifequal 1, .One
	ifequal 2, .Two
	ifequal 3, .Three
	ifequal 4, .Four
	ifequal 5, .Five
	ifequal 6, .Six
	ifequal 7, .Seven
	ifequal 8, .Eight
	end

.GoAwayJason:
	faceplayer
	refreshscreen
	opentext
	trainerpic JASON
	writetext NoAnimalsJason
	waitbutton
	closetrainpic
	closetext
	end


.Zero:
	checkmoney YOUR_MONEY, NOBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, NOBADGETUITION
	sjump .GotTheCost

.One:
	checkmoney YOUR_MONEY, ONEBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, ONEBADGETUITION
	sjump .GotTheCost

.Two:
	checkmoney YOUR_MONEY, TWOBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, TWOBADGETUITION
	sjump .GotTheCost

.Three:
	checkmoney YOUR_MONEY, THREEBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, THREEBADGETUITION
	sjump .GotTheCost

.Four:
	checkmoney YOUR_MONEY, FOURBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, FOURBADGETUITION
	sjump .GotTheCost

.Five:
	checkmoney YOUR_MONEY, FIVEBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, FIVEBADGETUITION
	sjump .GotTheCost

.Six:	
	checkmoney YOUR_MONEY, SIXBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, NOBADGETUITION
	sjump .GotTheCost

.Seven:
	checkmoney YOUR_MONEY, SEVENBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, NOBADGETUITION
	sjump .GotTheCost

.Eight:
	checkmoney YOUR_MONEY, EIGHTBADGETUITION
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, NOBADGETUITION
	sjump .GotTheCost
	
.GotTheCost:
	special PlaceMoneyTopRight
	sjump .FightTime

.Refused:
	writetext JasonGrumbleText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext JasonSadText
	waitbutton
	closetext
	end
	
.FightTime	
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
	refreshscreen
	opentext
	trainerpic JASON
	writetext JasonFightDoneText
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForShadowBall:
	closetrainpic
	closetext
	end

NoAnimalsJason:
	text "GRAH! GRAH!"
	line "-JASON points at"
	
	para "a picture of an"
	line "ANIMAL and shakes"
	cont "his head-"
	done


JasonIntroText:
	text "Rururughgh..."

	para "Grugh! Rah!"

	para "BLARGH!"
	done

JasonGrumbleText:
	text "CH CH CH HA HA HA"
	line "-JASON looks sad-"	
	done
	
JasonSadText:
	text "-JASON SHRUGS-"
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
