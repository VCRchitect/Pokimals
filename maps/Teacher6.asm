	object_const_def
	const TEACHER6_DIANA

Teacher6_MapScripts:
	def_scene_scripts

	def_callbacks

DianaScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic DIANA
	checkevent EVENT_BEAT_DIANA
	iftrue .FightDone
	writetext Diana_SteelTypeIntro
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
	readmem wBadges
	addval 1
	writemem wBadges
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
	writetext Diana_GoodLuck
	waitbutton
	closetrainpic
	closetext
	end
	
.NoRoomForIronTail:
	closetrainpic
	closetext
	end
	
Diana_SteelTypeIntro:
	text "I am DIANA, an"
	line "INSTRUCTOR. I use"
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
	line "class rules, I"

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
