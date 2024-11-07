	object_const_def
	const TEACHER1_TPAIN

Teacher1_MapScripts:
	def_scene_scripts

	def_callbacks

Teacher1TPainScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TPAIN
	checkevent EVENT_BEAT_TPAIN
	iftrue .FightDone
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
	readmem wBadges
	addval 1
	writemem wBadges
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
	refreshscreen
	writetext TPainText_BugMonsAreDeep
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForFuryCutter:
	closetrainpic
	closetext
	end

TPainText_INeverLose:
	text "SHAWTY SNAP!"
	line "WHAT'S UP, BABY?"

	para "IT'S YA BOY,"
	line "T-PAIAIAIAIAIN!"

	para "YOU WANT THIS GYM"
	line "BADGE, YOU'RE"
	cont "GONNA WORK FOR IT."

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

	para "If you don't miss,"
	line "it gets stronger"
	cont "every turn."

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
	line "Instructors."
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
