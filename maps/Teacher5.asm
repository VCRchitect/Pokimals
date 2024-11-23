	object_const_def
	const TEACHER5_LINCOLN

Teacher5_MapScripts:
	def_scene_scripts

	def_callbacks

LincolnScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .GoAwayLincoln
	checkevent EVENT_BEAT_LINCOLN
	iftrue .FightDone
	faceplayer
	refreshscreen
	special PlaceMoneyTopRight		
	trainerpic LINCOLN
	writetext LincolnText_Intro
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

.GoAwayLincoln:
	faceplayer
	refreshscreen
	opentext
	trainerpic LINCOLN
	writetext NoAnimalsLincoln
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
	writetext LincolnNoLearnText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext LincolnPoorText
	waitbutton
	closetext
	end
	
.FightTime	
	winlosstext LincolnText_Impressed, 0
	loadtrainer LINCOLN, LINCOLN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LINCOLN
	opentext
	writetext Text_ReceivedGlacierBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
.FightDone:
	checkevent EVENT_GOT_TM16_ICY_WIND
	iftrue LincolnScript_Defeat
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	refreshscreen
	trainerpic LINCOLN
	writetext LincolnText_GlacierBadgeSpeech
	promptbutton
	closetrainpic
	verbosegiveitem TM_ICY_WIND
	iffalse MahoganyGym_NoRoomForIcyWind
	setevent EVENT_GOT_TM16_ICY_WIND
	refreshscreen
	trainerpic LINCOLN
	writetext LincolnText_IcyWindSpeech
	waitbutton
	closetrainpic
	closetext
	end

LincolnScript_Defeat:
	faceplayer
	refreshscreen
	opentext
	trainerpic LINCOLN
	writetext LincolnText_CherishYourPokemon
	waitbutton
	closetrainpic
	closetext
	end
	
MahoganyGym_NoRoomForIcyWind:
	closetrainpic
	closetext
	end
	
NoAnimalsLincoln:
	text "We live in the"
	line "land of the free,"
	
	para "but that doesn't"
	line "apply to ANIMALs."
	
	para "Go get one, son!"
	done
	
LincolnNoLearnText:
	text "You serious?"
	
	para "Son, I became an"
	line "attorney from just"
	cont "a buncha books."
	
	para "You gotta learn."
	done
	
LincolnPoorText:
	text "You should not be"
	line "so broke. Even I"
	cont "had five dollars."
	done
	
LincolnText_Intro:
	text "Four score and"
	line "seven schools ago,"
	
	para "a trainer like you"
	line "thought they could"
	cont "beat me."

	para "I have seen"
	line "and suffered much"
	cont "in my life."
	
	para "I have been in 10"
	line "marriages."
	
	para "Each on was more"
	line "doodoo than the"
	cont "last."

	para "Since I am your"
	line "elder, let me show"
	cont "you what I mean."

	para "I have been with"
	line "ANIMALs since"

	para "before you were"
	line "born."
	
	para "At least they do"
	line "not talk back or"
	para "burn pot roasts."

	para "Enough about my"
	line "bad luck in love."

	para "I, LINCOLN--the"
	line "16th president--"

	para "shall demonstrate"
	line "my power!"
	done

LincolnText_Impressed:
	text "Ah, I am impressed"
	line "by your prowess."

	para "With your strong"
	line "will, I know you"

	para "will overcome all"
	line "life's obstacles."

	para "You are worthy of"
	line "this BADGE!"
	done

Text_ReceivedGlacierBadge:
	text "<PLAYER> received"
	line "GLACIERBADGE."
	done

LincolnText_GlacierBadgeSpeech:
	text "That BADGE will"
	line "raise the SPECIAL"
	cont "stats of ANIMALs."

	para "And this is"
	line "a gift from me!"
	done

LincolnText_IcyWindSpeech:
	text "That TM contains"
	line "ICY WIND."

	para "It inflicts damage"
	line "and lowers speed."

	para "It demonstrates"
	line "the harshness of"
	cont "winter."
	
	para "Or a bitter"
	line "divorce."
	
	para "Or being shot in"
	line "a theater by an"
	cont "actor."
	done

LincolnText_CherishYourPokemon:
	text "When the ice and"
	line "snow melt, spring"
	cont "arrives."

	para "You and your best"
	line "ANIMALs will be"

	para "together for many," 
	line "many years to come."

	para "Cherish your time"
	line "together!"
	
	para "Also, sign a"
	line "prenup, kid."
	done


Teacher5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, THESITEINSIDETEACHERHALL, 7
	warp_event  5,  5, THESITEINSIDETEACHERHALL, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_LINCOLN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LincolnScript, -1
