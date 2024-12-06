	object_const_def
	const PEWTERGYM_KID_ROCK

Teacher8_MapScripts:
	def_scene_scripts

	def_callbacks

Kid_RockScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .GoAwayKidRock
	checkflag ENGINE_STORMBADGE
	iftrue .FightDone
	faceplayer
	refreshscreen
	special PlaceMoneyTopRight
	trainerpic KID_ROCK
	writetext Kid_RockIntroText
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

.GoAwayKidRock:
	faceplayer
	refreshscreen
	opentext
	trainerpic KID_ROCK
	writetext NoAnimalsKidRock
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
	writetext KidRockNoLearnText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext KidRockPoorText
	waitbutton
	closetext
	end
	
.FightTime	
	waitbutton
	closetrainpic
	closetext
	winlosstext Kid_RockWinLossText, 0
	loadtrainer KID_ROCK, KID_ROCK1
	startbattle
	reloadmapafterbattle 
	setevent EVENT_BEAT_KID_ROCK
	opentext
	writetext GetStormBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
.FightDone:
	checkevent EVENT_GOT_TM01_DYNAMICPUNCH
	iftrue .AlreadyGotTM
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	refreshscreen
	trainerpic KID_ROCK
	writetext KidRockExplainBadgeText
	promptbutton
	closetrainpic
	verbosegiveitem TM_DYNAMICPUNCH
	iffalse .BagFull
	setevent EVENT_GOT_TM01_DYNAMICPUNCH
	refreshscreen
	trainerpic KID_ROCK
	writetext KidRockExplainTMText
	waitbutton
	closetrainpic
	closetext
	end

.AlreadyGotTM:
	faceplayer
	refreshscreen
	opentext
	trainerpic KID_ROCK
	writetext KidRockAfterText
	waitbutton
	closetrainpic
	closetext
	end
	
.BagFull:
	closetrainpic
	closetext
	end
	
NoAnimalsKidRock:
	text "You should go get"
	line "an ANIMAL so we"
	cont "can hang out."
	done
	
KidRockNoLearnText:
	text "You turning down"
	line "an education?"
	
	para "Man, that's pretty"
	line "cool of you!"
	done
	
KidRockPoorText:
	text "You're broke as a"
	line "joke, my man."
	done

Kid_RockIntroText:
	text "KID ROCK: MY NAME"
	line "IS KIIIIIIIIID..."

	para "KID ROCK!"

	para "I'm an expert on"
	line "rock, and often,"
	cont "roll."

	para "Come on!"
	done

Kid_RockWinLossText:
	text "KID ROCK:"
	line "BAWITADABA DABANG!"

	para "Go ahead--take"
	line "this BADGE."
	done

GetStormBadgeText:
	text "<PLAYER> received"
	line "STORMBADGE."
	done

KidRockExplainBadgeText:
	text "STORMBADGE makes"
	line "all ANIMALs up to"

	para "L70 obey, even"
	line "traded ones."

	para "Here, take this"
	line "too."
	done

KidRockExplainTMText:
	text "That is DYNAMIC-"
	line "PUNCH."

	para "It doesn't always"
	line "hit, but when it"

	para "does, it causes"
	line "confusion."
	
	para "I know I'm always"
	line "confused, and I"
	cont "never got hit!"
	done

KidRockAfterText:
	text "Get outta here,"
	line "kid."

	para "I got a date with"
	line "a trashy girl and"
	cont "a crack pipe."
	done



Teacher8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, THESITEINSIDETEACHERHALL, 10
	warp_event  1,  5, THESITEINSIDETEACHERHALL, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_KID_ROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Kid_RockScript, -1
