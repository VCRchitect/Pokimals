	object_const_def
	const APT102JOSE
	const APT102BEAUTY

Apt102_MapScripts:
	def_scene_scripts
	scene_script .MetJoseBadly ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED


	def_callbacks

.MetJoseBadly:
	sdefer .WrongedJose
	end

.DummyScene:
	end

.WrongedJose:
	refreshscreen
	opentext
	trainerpic BEAUTY
	writetext Teehee
	waitbutton
	closetrainpic
	closetext
	playsound SFX_SWEET_KISS
	refreshscreen
	trainerpic JOSE
	writetext Kisskiss
	waitbutton
	closetrainpic
	closetext
	showemote EMOTE_SHOCK, APT102JOSE, 15
	turnobject APT102JOSE, LEFT	
	refreshscreen
	opentext
	trainerpic JOSE
	writetext WhoYou
	waitbutton
	closetrainpic
	closetext
	showemote EMOTE_SHOCK, APT102BEAUTY, 15
	turnobject APT102BEAUTY, LEFT	
	refreshscreen
	opentext
	trainerpic BEAUTY
	writetext Creep
	waitbutton
	closetrainpic
	closetext
	opentext
	writetext DoubleSlap
	waitbutton
	closetext
	turnobject APT102BEAUTY, DOWN
	turnobject APT102JOSE, UP
	playsound SFX_DOUBLESLAP
	pause 15
	playsound SFX_DOUBLESLAP
	opentext
	writetext SuperEffective
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	disappear APT102BEAUTY
	special FadeInQuickly
	setevent EVENT_WRONGEDCUTIE
	turnobject APT102JOSE, LEFT	
	refreshscreen
	opentext
	trainerpic JOSE
	writetext DeadMeat
	waitbutton
	closetrainpic
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15	
	disappear APT102JOSE
	playsound SFX_RUN
	special FadeInQuickly
	refreshscreen
	opentext
	writetext GotAway
	waitbutton
	closetext
	setevent EVENT_WRONGEDJOSE
	setscene SCENE_FINISHED
	end
	
JoseScript:
	end	

CutieScript:
	end	
	
Teehee:
	text "-teehee-"
	line "JOSE! You dog!"
	cont "-teehee-"
	
	para "This is in no way"
	line "weird because you"
	
	para "are a friend of"
	line "the developer and"
	
	para "not a weird self-"
	line "insert, so it's"
	cont "more normal."
	done
	
Kisskiss:
	text "Yeah, girl, you"
	line "know that JOSE"
	cont "is muy caliente."
	done
	
WhoYou:
	text "Huh? Who the hell"
	line "are you? Why are"
	cont "you in my room?"
	done
	
Creep:
	text "-tee..."
	line "Huh? WHO IS THAT?"
	
	para "YOU DIDN'T TELL ME"
	line "YOU WERE A FREAK"
	cont "JOSE!"
	
	para "What are you, some"
	line "kind of man that"
	cont "lets people watch?"
	done
	
DoubleSlap:
	text "CUTIE used DOUBLE-"
	line "SLAP!"
	done
	
SuperEffective:
	text "It's"
	line "super-effective!"
	done

DeadMeat:
	text "You know you're"
	line "dead, right?"
	
	para "A PERVERT like you"
	line "is gonna get a few"
	
	para "visits from the"
	line "boys!"
	
	para "My boys don't"
	line "fight fair!"
	
	para "Later, idiot!"
	done

GotAway:
	text "JOSE got away"
	line "safely!"
	done

Apt102_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event  3,  5, APARTMENT_HALL, 2
	warp_event  2,  5, APARTMENT_HALL, 2
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  4, SPRITE_JOSE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, JoseScript, EVENT_WRONGEDJOSE
	object_event  6,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CutieScript, EVENT_WRONGEDCUTIE
	
