	object_const_def
	const TEACHER5_LINCOLN

Teacher5_MapScripts:
	def_scene_scripts

	def_callbacks

LincolnScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LINCOLN
	checkevent EVENT_BEAT_LINCOLN
	iftrue .FightDone
	writetext LincolnText_Intro
	waitbutton
	closetrainpic
	closetext
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
	readvar VAR_BADGES
.FightDone:
	checkevent EVENT_GOT_TM16_ICY_WIND
	iftrue LincolnScript_Defeat
	readmem wLevelCap
	addval 5
	writemem wLevelCap
	readmem wBaseLevel
	addval 5
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
	writetext LincolnText_CherishYourPokemon
	waitbutton
MahoganyGym_NoRoomForIcyWind:
	closetrainpic
	closetext
	end
	
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
