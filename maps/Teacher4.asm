	object_const_def
	const TEACHER4_LARA


Teacher4_MapScripts:
	def_scene_scripts

	def_callbacks

LaraScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .GoAwayLara
	checkevent EVENT_BEAT_LARA
	iftrue .FightDone
	faceplayer
	refreshscreen
	special PlaceMoneyTopRight	
	trainerpic LARA
	writetext LaraBeforeText
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

.GoAwayLara:
	faceplayer
	refreshscreen
	opentext
	trainerpic LARA
	writetext NoAnimalsLara
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
	writetext LaraNoLearnText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext LaraPoorText
	waitbutton
	closetext
	end
	
.FightTime	
	waitbutton
	closetrainpic
	closetext
	winlosstext LaraShouldntBeSoSeriousText, 0
	loadtrainer LARA, LARA1
	startbattle
	reloadmapafterbattle
.FightDone:
	refreshscreen
	opentext
	trainerpic LARA
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext LaraWhatDoYouWantText
	promptbutton
	closetrainpic
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
.GotPlainBadge:
	refreshscreen
	trainerpic LARA
	writetext LaraPlainBadgeText
	promptbutton
	closetrainpic
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoomForAttract
	setevent EVENT_GOT_TM45_ATTRACT
	refreshscreen
	trainerpic LARA
	writetext LaraAttractText
	waitbutton
	closetrainpic
	closetext
	end

.GotAttract:
	refreshscreen
	opentext
	trainerpic LARA
	writetext LaraGoodCryText
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForAttract:
	closetrainpic
	closetext
	end
	
NoAnimalsLara:
	text "Oh dear, it seems"
	line "you don't have an"
	cont "ANIMAL."
	done
	
LaraBeforeText:
	text "LARA: Hello..."
	line "Lovely weather,"

	para "isn't it, dear?"
	line "It's so pleasant."

	para "I'm afraid I may"
	line "doze off..."

	para "My name is LARA."

	para "I was hoping that"
	line "my comment would"
	
	para "show you that"
	line "you're boring me."
	
	para "Did you come here"
	line "to learn?"
	done

LaraPoorText:
	text "Is this some kind"
	line "of poor people"
	para "joke that I'm too"
	line "rich to get?"
	done

LaraNoLearnText:
	text "That's okay, love!" 
	line "Lots of uneducated"
	cont "people succeed!"
	done

LaraShouldntBeSoSeriousText:
	text "Cor blimey!"
	line "I just got me shit"
	cont "kicked."	
	done

LaraWhatDoYouWantText:
	para "What? Ya done"
	line "hooked the piss"
	cont "and posh outta me."

	para "Oh, right."
	line "I forgot. Here's"
	cont "PLAINBADGE, fucka."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> received"
	line "PLAINBADGE."
	done

LaraPlainBadgeText:
	text "PLAINBADGE boosts"
	line "your ANIMALs'"
	cont "SPEED."

	para "Oh, you can have"
	line "this too, mate!"
	done

LaraAttractText:
	text "It's ATTRACT!"
	line "It makes full use"

	para "of a ANIMAL's"
	line "charm."

	para "Use it to lure"
	line "cunts into a trap"
	
	para "then hook 'em"
	line "roight in the"
	cont "gabber!"
	done

LaraGoodCryText:
	text "Come for a visit"
	line "again! We can have"
	cont "bangers 'n' mash!"
	done
	
Teacher4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, THESITEINSIDETEACHERHALL, 6
	warp_event  1,  5, THESITEINSIDETEACHERHALL, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_LARA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LaraScript, -1

