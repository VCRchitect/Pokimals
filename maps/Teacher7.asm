	object_const_def
	const TEACHER7_BIG_BIRD



Teacher7_MapScripts:
	def_scene_scripts

	def_callbacks

Big_BirdScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .GoAwayBigBird
	checkevent EVENT_BEAT_BIG_BIRD
	iftrue .FightDone
	faceplayer
	refreshscreen
	special PlaceMoneyTopRight		
	trainerpic BIG_BIRD
	writetext Big_BirdIntroText
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

.GoAwayBigBird
	faceplayer
	refreshscreen
	opentext
	trainerpic BIG_BIRD
	writetext NoAnimalsBigBird
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
	writetext BigBirdNoLearnText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext BigBirdPoorText
	waitbutton
	closetext
	end
	
.FightTime	
	waitbutton
	closetrainpic
	closetext
	winlosstext Big_BirdWinLossText, 0
	loadtrainer BIG_BIRD, BIG_BIRD1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	setevent EVENT_BEAT_BIG_BIRD
	opentext
	writetext ReceivedZephyrBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .SpeechAfterTM
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	refreshscreen
	trainerpic BIG_BIRD
	writetext Big_BirdZephyrBadgeText
	promptbutton
	closetrainpic
	verbosegiveitem TM_MUD_SLAP
	iffalse .NoRoomForMudSlap
	setevent EVENT_GOT_TM31_MUD_SLAP
	refreshscreen
	trainerpic BIG_BIRD
	writetext Big_BirdTMMudSlapText
	waitbutton
	closetrainpic
	closetext
	end

.SpeechAfterTM:
	faceplayer
	refreshscreen
	opentext
	trainerpic BIG_BIRD
	writetext Big_BirdFightDoneText
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForMudSlap:
	closetext
	end
	
NoAnimalsBigBird:
	text "You wanna learn"
	line "with BIG BIRD?"
	
	para "Get an ANIMAL!"
	done
	
BigBirdPoorText:
	text "Just because it's"
	line "okay to be poor,"
	
	para "it doesn't mean"
	line "you should be."
	done
	
BigBirdNoLearnText:
	text "Did you learn a"
	line "single thing from"
	cont "Sesame Street?"
	
	para "Get an education!"
	done
	
Big_BirdIntroText:
	text "I'm BIG BIRD, the"
	line "FLYING INSTRUCTOR."

	para "People say you can"
	line "clip flying-type"

	para "ANIMALs' wings"
	line "with a jolt of"
	cont "electricity..."

	para "I won't allow such"
	line "insults to bird"
	cont "ANIMALs!"

	para "I'll show you the"
	line "real power of the"

	para "magnificent bird"
	line "ANIMAL!"
	done

Big_BirdWinLossText:
	text "I never should've"
	line "left Sesame Street"
	cont "to be a teacher..."

	para "All right."
	line "Take this."

	para "It's the official"
	line "ZEPHYRBADGE."
	done

ReceivedZephyrBadgeText:
	text "<PLAYER> received"
	line "ZEPHYRBADGE."
	done

Big_BirdZephyrBadgeText:
	text "ZEPHYRBADGE"
	line "raises the attack"
	cont "power of ANIMALs."

	para "Here--take this"
	line "too."
	done

Big_BirdTMMudSlapText:
	text "By using a TM, an"
	line "ANIMAL will"

	para "instantly learn a"
	line "new move."

	para "TM31 contains"
	line "MUD-SLAP."

	para "It reduces the"
	line "enemy's accuracy"

	para "while it causes"
	line "damage."

	para "In other words, it"
	line "is both defensive"
	cont "and offensive."
	done

Big_BirdFightDoneText:
	text "This sucks. There"
	line "wasn't even a cool"
	cont "lesson to learn."
	done


Teacher7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, THESITEINSIDETEACHERHALL, 9
	warp_event  5,  5, THESITEINSIDETEACHERHALL, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_BIG_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Big_BirdScript, -1
