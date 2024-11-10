	object_const_def
	const TEACHER6_DIANA

Teacher6_MapScripts:
	def_scene_scripts

	def_callbacks

DianaScript:
	checkevent EVENT_BEAT_DIANA
	iftrue .FightDone
	faceplayer
	refreshscreen
	special PlaceMoneyTopRight		
	trainerpic DIANA
	writetext Diana_SteelTypeIntro
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
	writetext DianaNoLearnText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext DianaPoorText
	waitbutton
	closetext
	end
	
.FightTime	
	waitbutton
	closetrainpic
	closetext
	winlosstext Diana_BetterTrainer, 0
	loadtrainer DIANA, DIANA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DIANA
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
	trainerpic DIANA
	writetext Diana_BadgeSpeech
	promptbutton
	closetrainpic
	verbosegiveitem TM_IRON_TAIL
	iffalse .NoRoomForIronTail
	setevent EVENT_GOT_TM23_IRON_TAIL
	refreshscreen
	trainerpic DIANA
	writetext Diana_IronTailSpeech
	waitbutton
	closetrainpic
	closetext
	end

.GotIronTail:
	refreshscreen
	opentext
	trainerpic DIANA
	writetext Diana_GoodLuck
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForIronTail:
	closetrainpic
	closetext
	end
	
DianaNoLearnText:
	text "It is dishonorable"
	line "to deny wisdom."
	done

DianaPoorText:
	text "It is unforgivable"
	line "to be poor."
	done
	
Diana_SteelTypeIntro:
	text "I am DIANA, an"
	line "instructor. I use"
	cont "the steel-type."

	para "Do you know about"
	line "the steel-type?"

	para "It's a type that"
	line "was only recently"
	cont "discovered."

	para "Let's begin."
	done

Diana_BetterTrainer:
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

Diana_BadgeSpeech:
	text "MINERALBADGE"
	line "raises ANIMALs'"
	cont "DEFENSE."

	para "Please take this"
	line "as well."
	done

Diana_IronTailSpeech:
	text "You could use"
	line "that TM to teach"
	cont "IRON TAIL."
	done

Diana_GoodLuck:
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
	object_event  3,  2, SPRITE_DIANA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DianaScript, -1
