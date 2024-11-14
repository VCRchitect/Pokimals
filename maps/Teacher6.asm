	object_const_def
	const TEACHER6_ARNOLD

Teacher6_MapScripts:
	def_scene_scripts

	def_callbacks

ArnoldScript:
	checkevent EVENT_BEAT_ARNOLD
	iftrue .FightDone
	faceplayer
	refreshscreen
	special PlaceMoneyTopRight		
	trainerpic ARNOLD
	writetext Arnold_SteelTypeIntro
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
	writetext ArnoldNoLearnText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext ArnoldPoorText
	waitbutton
	closetext
	end
	
.FightTime	
	waitbutton
	closetrainpic
	closetext
	winlosstext Arnold_BetterTrainer, 0
	loadtrainer ARNOLD, ARNOLD1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ARNOLD
	refreshscreen
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
.FightDone:
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue .GotIronTail
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	refreshscreen
	trainerpic ARNOLD
	writetext Arnold_BadgeSpeech
	promptbutton
	closetrainpic
	verbosegiveitem TM_IRON_TAIL
	iffalse .NoRoomForIronTail
	setevent EVENT_GOT_TM23_IRON_TAIL
	refreshscreen
	trainerpic ARNOLD
	writetext Arnold_IronTailSpeech
	waitbutton
	closetrainpic
	closetext
	end

.GotIronTail:
	refreshscreen
	opentext
	trainerpic ARNOLD
	writetext Arnold_GoodLuck
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForIronTail:
	closetrainpic
	closetext
	end
	
ArnoldNoLearnText:
	text "It is dishonorable"
	line "to deny wisdom."
	done

ArnoldPoorText:
	text "It is unforgivable"
	line "to be poor."
	done
	
Arnold_SteelTypeIntro:
	text "I am ARNOLD, an"
	line "instructor. I use"
	cont "the steel-type."

	para "Do you know about"
	line "the steel-type?"

	para "It's a type that"
	line "was only recently"
	cont "discovered."

	para "Let's begin."
	done

Arnold_BetterTrainer:
	text "You are a better"
	line "trainer than me,"

	para "in both skill and"
	line "kindness."

	para "In accordance with"
	line "academy rules, I"

	para "confer upon you"
	line "this BADGE."
	done

Text_ReceivedMineralBadge:
	text "<PLAYER> received"
	line "MINERALBADGE."
	done

Arnold_BadgeSpeech:
	text "MINERALBADGE"
	line "raises ANIMALs'"
	cont "DEFENSE."

	para "Please take this"
	line "as well."
	done

Arnold_IronTailSpeech:
	text "You could use"
	line "that TM to teach"
	cont "IRON TAIL."
	done

Arnold_GoodLuck:
	text "You won't need it,"
	line "but good luck..."
	done


Teacher6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, THESITEINSIDETEACHERHALL, 8
	warp_event  1,  5, THESITEINSIDETEACHERHALL, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_ARNOLD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ArnoldScript, -1
