	object_const_def
	const TEACHER4_LARA


Teacher4_MapScripts:
	def_scene_scripts

	def_callbacks

LaraScript:
	faceplayer
	refreshscreen
	checkevent EVENT_BEAT_LARA
	iftrue .FightDone
	opentext
	trainerpic LARA
	writetext LaraBeforeText
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
	addval 5
	writemem wLevelCap
	readmem wBaseLevel
	addval 5
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
	readvar VAR_BADGES
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
	trainerpic LARA
	writetext LaraGoodCryText
	waitbutton
.NoRoomForAttract:
	closetrainpic
	closetext
	end
	
LaraBeforeText:
	text "Hi! I'm LARA!"

	para "Everyone was into"
	line "ANIMALs, so I got"
	cont "into it too!"

	para "ANIMALs are"
	line "super-cute!"

	para "You want to bat-"
	line "tle? I'm warning"
	cont "you--I'm good!"
	
	para "Like, I have an"
	line "insane kill rate."
	
	done

LaraShouldntBeSoSeriousText:
	para "You shouldn't be"
	line "so serious! You..."
	cont "you child, you!"
	
	para "I'll hit you with"
	line "a brick!"
	done

LaraWhatDoYouWantText:
	para "What? What do you"
	line "want? A BADGE?"

	para "Oh, right."
	line "I forgot. Here's"
	cont "PLAINBADGE."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> received"
	line "PLAINBADGE."
	done

LaraPlainBadgeText:
	text "PLAINBADGE lets"
	line "your ANIMALs use"

	para "STRENGTH outside"
	line "of battle."

	para "It also boosts"
	line "your ANIMAL's"
	cont "SPEED."

	para "Oh, you can have"
	line "this too!"
	done

LaraAttractText:
	text "It's ATTRACT!"
	line "It makes full use"

	para "of a ANIMAL's"
	line "charm."

	para "Isn't it just per-"
	line "fect for a cutie"
	cont "like me?"
	
	para "It's okay. I said"
	line "it first. It's not"
	
	para "weird if you"
	line "agree with me."
	done

LaraGoodCryText:
	text "Come for a visit"
	line "again! Bye-bye!"
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

