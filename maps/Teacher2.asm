	object_const_def
	const TEACHER2_PEELY

Teacher2_MapScripts:
	def_scene_scripts

	def_callbacks

PeelyScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic PEELY
	checkflag ENGINE_RISINGBADGE
	iftrue .AlreadyGotBadge
	checkevent EVENT_BEAT_PEELY
	iftrue .FightDone
	writetext PeelyIntroText
	waitbutton
	closetrainpic
	closetext
	winlosstext PeelyWinText, 0
	loadtrainer PEELY, PEELY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PEELY
	refreshscreen
	opentext
	trainerpic PEELY
	writetext PeelyText_GoodJob
	waitbutton
	closetrainpic
	closetext
	end

.FightDone:
	writetext Teacher2GymPeelyText_League
	waitbutton
	closetrainpic
	closetext
	readmem wLevelCap
	addval 5
	writemem wLevelCap
	readmem wBaseLevel
	addval 5
	writemem wBaseLevel	
	end

.AlreadyGotBadge:
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue .GotTM24
	writetext Teacher2GymPeelyText_YouKeptMeWaiting
	promptbutton
	giveitem TM_DRAGONBREATH
	iffalse .BagFull
	getitemname STRING_BUFFER_3, TM_DRAGONBREATH
	writetext Teacher2GymText_ReceivedTM24
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext Teacher2GymPeelyText_DescribeTM24
	promptbutton
	sjump .GotTM24

.BagFull:
	writetext Teacher2GymPeelyText_BagFull
	waitbutton
	closetrainpic
	closetext
	end

.GotTM24:
	writetext Teacher2GymPeelyText_League
	waitbutton
	closetrainpic
	closetext
	
	end
	
PeelyIntroText:
	text "I am PEELY."

	para "Let's fight."
	line "Or else this talk"
	
	para "will start DRAGON"
	line "me down. haha"
	
	para "I kid. I kid."
	done

PeelyWinText:
	text "I lost?"

	para "Huh. Maybe I'll"
	line "spend less time on"
	cont "puns now."
	done

PeelyText_GoodJob:
	text "..."
	line "That was good."
	done
	
	text "Welp, that went"
	line "kinda poorly."	

Teacher2GymPeelyText_YouKeptMeWaiting:
	text "Here! Take this!"
	done

Teacher2GymText_ReceivedTM24:
	text "<PLAYER> received"
	line "TM24 DRAGONBREATH."
	done

Teacher2GymPeelyText_DescribeTM24:
	text "That contains"
	line "DRAGONBREATH."

	para "No, it doesn't"
	line "have anything to"
	cont "do with my breath."
	
	para "But my breath was"
	line "spicy earlier."
	done

Teacher2GymPeelyText_BagFull:
	text "What is this? You"
	line "don't have room?"
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
