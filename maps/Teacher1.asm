	object_const_def
	const TEACHER1_TPAIN

Teacher1_MapScripts:
	def_scene_scripts

	def_callbacks

Teacher1TPainScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .GoAwayTPain
	checkevent EVENT_BEAT_TPAIN
	iftrue .FightDone
	faceplayer
	refreshscreen
	special PlaceMoneyTopRight
	trainerpic TPAIN
	writetext GottaPayToPlayText
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

.GoAwayTPain:
	faceplayer
	refreshscreen
	opentext
	trainerpic TPAIN
	writetext NoAnimalsTPain
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
	writetext StayUneducatedBabyText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext TakeBrokeAssHomeText
	waitbutton
	closetext
	end
	
.FightTime	
	writetext TPainText_INeverLose
	waitbutton
	closetrainpic
	closetext
	winlosstext TPainText_ResearchIncomplete, 0
	loadtrainer TPAIN, TPAIN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TPAIN
	refreshscreen
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
.FightDone:
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue .GotFuryCutter
	readmem wLevelCap
	addval 10
	writemem wLevelCap
	readmem wBaseLevel
	addval 10
	writemem wBaseLevel	
	refreshscreen
	opentext
	trainerpic TPAIN
	writetext TPainText_HiveBadgeSpeech
	promptbutton
	closetrainpic
	verbosegiveitem TM_FURY_CUTTER
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM49_FURY_CUTTER
	refreshscreen
	trainerpic TPAIN
	writetext TPainText_FuryCutterSpeech
	waitbutton
	closetrainpic
	closetext
	end

.GotFuryCutter:
	faceplayer
	refreshscreen
	opentext
	trainerpic TPAIN
	writetext TPainText_BugMonsAreDeep
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForFuryCutter:
	closetrainpic
	closetext
	end

NoAnimalsTPain:
	text "HOOOOOWWWOWOWO"
	line "YOU GONNA LEARN"
	cont "WITHOUT AN ANIMAL?"
	done

GottaPayToPlayText:
	text "I WAS TRYING TO"
	line "ENJOY MY NIGHT BUT"
	cont "YOU DONE CAME IN!"

	para "RAH!"
	
	para "YOU KNOW YOU GOTTA"
	line "PAY IF YOU WANNA"
	cont "PLAY, BABY."

	para "YOU DOWN?"
	done
	
StayUneducatedBabyText:	
	text "WELL DAMN, IF YOU"
	line "WANNA STAY ON THE"
	cont "UNEDUCATED SIDE,"

	para "YOU SHOULD HAVE"
	line "SAID SO."
	done

TakeBrokeAssHomeText:
	text "DAMN, SON, YOU"
	line "GONNA HAVE TO TAKE"
	cont "YA BROKE ASS HOME."
	done
	
TPainText_INeverLose:
	text "SHAWTY SNAP!"
	line "WHAT'S UP, BABY?"

	para "IT'S YA BOY,"
	line "T-PAIAIAIAIAIN!"

	para "LEEEEETTT'S"
	line "DOOOOO THIIIS!"
	done

TPainText_ResearchIncomplete:
	text "Whoa!"
	line "I didn't expect to"
	cont "win, but damn."

	para "OK, you win. Take"
	line "this BADGE."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> received"
	line "HIVEBADGE."
	done

TPainText_HiveBadgeSpeech:
	text "Do you know the"
	line "benefits of HIVE-"
	cont "BADGE?"

	para "It's a badge."
	line "It's a hive."

	para "It's a HIVEBADGE!"

	para "Here, I also want"
	line "you to have this."
	done

TPainText_FuryCutterSpeech:
	text "TM49 contains"
	line "FURY CUTTER."

	para "The longer your"
	line "battle goes, the"
	cont "better it gets."

	para "Just like my"
	line "career, baby."
	done

TPainText_BugMonsAreDeep:
	text "Bug ANIMALs are"
	line "okay. But it's all"
	
	para "that was left to"
	line "pick from when we"
	para "signed up to be"
	line "teachers."
	done
	

Teacher1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, THESITEINSIDETEACHERHALL, 3
	warp_event  5,  5, THESITEINSIDETEACHERHALL, 3
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_TPAIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Teacher1TPainScript, -1
