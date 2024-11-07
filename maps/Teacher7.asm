	object_const_def
	const TEACHER7_BIG_BIRD



Teacher7_MapScripts:
	def_scene_scripts

	def_callbacks

Big_BirdScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic BIG_BIRD
	checkevent EVENT_BEAT_BIG_BIRD
	iftrue .FightDone
	writetext Big_BirdIntroText
	waitbutton
	closetrainpic
	closetext
	winlosstext Big_BirdWinLossText, 0
	loadtrainer BIG_BIRD, BIG_BIRD1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIG_BIRD
	opentext
	writetext ReceivedZephyrBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .SpeechAfterTM
	readmem wLevelCap
	addval 5
	writemem wLevelCap
	readmem wBaseLevel
	addval 5
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
	writetext Big_BirdFightDoneText
	waitbutton
.NoRoomForMudSlap:
	closetext
	end
	
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
	warp_event  4,  5, THESITEINSIDETEACHERHALL, 8
	warp_event  5,  5, THESITEINSIDETEACHERHALL, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_BIG_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Big_BirdScript, -1
