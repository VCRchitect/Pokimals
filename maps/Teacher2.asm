	object_const_def
	const TEACHER2_PEELY

Teacher2_MapScripts:
	def_scene_scripts

	def_callbacks

PeelyScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .GoAwayPeely
	checkevent EVENT_BEAT_PEELY
	iftrue .FightDone
	faceplayer
	refreshscreen	
	special PlaceMoneyTopRight	
	trainerpic PEELY
	writetext PeelyIntroText
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

.GoAwayPeely:
	faceplayer
	refreshscreen
	opentext
	trainerpic PEELY
	writetext NoAnimalsPeely
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
	writetext PeelyNoLearnText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext PeelyPoorText
	waitbutton
	closetext
	end
	
.FightTime	
	waitbutton
	closetrainpic
	closetext
	winlosstext PeelyWinText, 0
	loadtrainer PEELY, PEELY1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	setevent EVENT_BEAT_PEELY
	refreshscreen
	writetext DragonShrinePlayerReceivedRisingBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE
.FightDone:
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue .GotTM24
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	refreshscreen
	opentext
	trainerpic PEELY	
	writetext DragonShrineRisingBadgeExplanationText
	promptbutton
	closetrainpic
	giveitem TM_DRAGONBREATH
	iffalse .BagFull
	getitemname STRING_BUFFER_3, TM_DRAGONBREATH
	writetext Teacher2GymText_ReceivedTM24
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext Teacher2GymPeelyText_DescribeTM24
	waitbutton
	closetext
	end

.BagFull:
	writetext Teacher2GymPeelyText_BagFull
	waitbutton
	closetrainpic
	closetext
	end

.GotTM24:
	faceplayer
	refreshscreen
	opentext
	trainerpic PEELY
	writetext Teacher2GymPeelyText_League
	waitbutton
	closetrainpic
	closetext
	end
	
NoAnimalsPeely:
	text "-PEELY points at"
	line "the door-"
	done
	
PeelyIntroText:
	text "PEELY: ..."
	done

PeelyWinText:
	text "..."
	done

PeelyNoLearnText:
	text "..."
	done

PeelyPoorText:
	text "..."
	para "???"
	done
	
DragonShrinePlayerReceivedRisingBadgeText:
	text "<PLAYER> received"
	line "RISINGBADGE."
	done

DragonShrineRisingBadgeExplanationText:
	text "-PEELY tossed an"
	line "item at you-"
	done

Teacher2GymText_ReceivedTM24:
	text "<PLAYER> received"
	line "TM24 DRAGONBREATH."
	done

Teacher2GymPeelyText_DescribeTM24:
	text "..."
	done

Teacher2GymPeelyText_BagFull:
	text "???"
	done

Teacher2GymPeelyText_League:
	text "I'm a banana,"
	
	para "Can you peel back"
	line "my skin?"
	
	para "Don't you feel"
	line "sorry for me."
	
	para "Please don't you"
	line "murder me."
	
	para "We are both"
	line "platanitos."
	
	para "Both of us grow"
	line "on trees."

	para "Huh? You need"
	line "something?"
	done

Teacher2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, THESITEINSIDETEACHERHALL, 4
	warp_event  1,  5, THESITEINSIDETEACHERHALL, 4



	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_PEELY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PeelyScript, -1
