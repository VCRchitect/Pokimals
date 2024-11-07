	object_const_def
	const PEWTERGYM_KID_ROCK

Teacher8_MapScripts:
	def_scene_scripts

	def_callbacks

Kid_RockScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic KID_ROCK
	checkflag ENGINE_STORMBADGE
	iftrue .FightDone
	writetext Kid_RockIntroText
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
	readmem wBadges
	addval 1
	writemem wBadges
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
	writetext KidRockAfterText
	waitbutton
	closetrainpic
	closetext
	end
	
.BagFull:
	closetrainpic
	closetext
	end

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
	warp_event  0,  5, THESITEINSIDETEACHERHALL, 9
	warp_event  1,  5, THESITEINSIDETEACHERHALL, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_KID_ROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Kid_RockScript, -1
