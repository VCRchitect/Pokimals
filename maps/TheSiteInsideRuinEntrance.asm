	object_const_def
	const SITERUIN_ELM

TheSiteInsideRuinEntrance_MapScripts:
	def_scene_scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_FINISHED


	def_callbacks
	callback MAPCALLBACK_TILES, .SecretElevatorOpen

.DummyScene1:
	end

.DummyScene2:
	end

.SecretElevatorOpen:
	checkevent EVENT_SECRET_ELEVATOR_CLOSED
	iffalse .OpenElevator
	changeblock 8, 0, 5
.OpenElevator:
	checkevent EVENT_SECRET_ELEVATOR_OPEN
	iffalse .KeepDoorClosed
	changeblock 8, 0, 65
.KeepDoorClosed:
	endcallback

.MeetElm:
	applymovement PLAYER, WalkUpToElmMovement
	refreshscreen
	opentext
	trainerpic ELM
	writetext ElmText_Intro
	waitbutton
	writetext ElmText_ChooseAPokemon
	waitbutton
	closetrainpic
	closetext
	sjump PickMonMenu


PickMonMenu:
.loop
	refreshscreen
	loadmenu RuinEntranceMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Skunk
	ifequal 2, .Scrawny
	ifequal 3, .Bat
	ifequal 4, .Lamb
	ifequal 5, .Larva
	ifequal 6, .Squirrel
	ifequal 7, .Drifter
	ifequal 8, .Rocky
	ifequal 9, .SeaTurtle
	ifequal 10, .Raptor
	ifequal 11, .BagLady
	ifequal 12, .Serpent
	ifequal 13, .Slime	
	writetext DidntChooseStarterText
	waitbutton
	closetext
	sjump .loop
	setscene SCENE_ELMSLAB_CANT_LEAVE
	end
	
.Skunk:
	refreshscreen
	pokepic SKUNK
	cry SKUNK
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, SKUNK
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SKUNK, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Scrawny:
	refreshscreen
	pokepic SCRAWNY
	cry SCRAWNY
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, SCRAWNY
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SCRAWNY, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Bat:
	refreshscreen
	pokepic BAT
	cry BAT
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, BAT
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BAT, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Larva:
	refreshscreen
	pokepic LARVA
	cry LARVA
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, LARVA
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke LARVA, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Raptor:
	refreshscreen
	pokepic RAPTOR
	cry RAPTOR
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, RAPTOR
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke RAPTOR, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Drifter:
	refreshscreen
	pokepic DRIFTER
	cry DRIFTER
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, DRIFTER
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke DRIFTER, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.BagLady:
	refreshscreen
	pokepic BAG_LADY
	cry BAG_LADY
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, BAG_LADY
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BAG_LADY, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Serpent:
	refreshscreen
	pokepic SERPENT
	cry SERPENT
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, SERPENT
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SERPENT, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Squirrel:
	refreshscreen
	pokepic SQUIRREL
	cry SQUIRREL
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, SQUIRREL
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRREL, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.SeaTurtle:
	refreshscreen
	pokepic SEA_TURTLE
	cry SEA_TURTLE
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, SEA_TURTLE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SEA_TURTLE, 10, BERRY
	closetext
	sjump ElmDirectionsScript

.Lamb:
	refreshscreen
	pokepic LAMB
	cry LAMB
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, LAMB
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke LAMB, 10, BERRY
	closetext
	sjump ElmDirectionsScript
	
.Rocky:
	refreshscreen
	pokepic ROCKY
	cry ROCKY
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, ROCKY
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke ROCKY, 10, BERRY
	closetext
	sjump ElmDirectionsScript
	
.Slime:
	refreshscreen
	pokepic SLIME
	cry SLIME
	waitbutton
	refreshscreen
	opentext
	scall RuinEntrance_ConfirmPurchaseScript	
	iffalse RuinEntranceStarter_CancelPurchaseScript
	promptbutton
	getmonname STRING_BUFFER_3, SLIME
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SLIME, 10, METAL_POWDER
	closetext
	sjump ElmDirectionsScript
	

RuinEntranceStarter_CancelPurchaseScript:
	sjump PickMonMenu

RuinEntranceMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 19, 16
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 7, 2 ; rows, columns
	db 9 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "SKUNK@"
	db "SCRAWNY@"
	db "BAT@"
	db "LAMB@"
	db "LARVA@"
	db "SQUIRREL@"
	db "DRIFTER@"
	db "THE ROCK@"
	db "TURTLE@"
	db "RAPTOR@"
	db "BAG LADY@"
	db "SERPENT@"
	db "SLIME@"
	db "CANCEL@"
	
ProfElmScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic ELM
	randomtext ElmTextTable
	waitbutton
	closetrainpic
	closetext
	end		

LabTryToLeaveScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .DoNotLeave
	end
.DoNotLeave:
	turnobject SITERUIN_ELM, DOWN
	refreshscreen
	opentext
	trainerpic ELM
	writetext LabWhereGoingText
	waitbutton
	closetrainpic
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end	

DidntChooseStarterScript:
	closepokepic	
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

ElmDirectionsScript:
	turnobject PLAYER, LEFT
	refreshscreen
	opentext
	trainerpic ELM
	writetext ElmDirectionsText1
	waitbutton
	closetext
	turnobject SITERUIN_ELM, UP
	refreshscreen
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 8, 0, 65
	reloadmappart
	waitsfx
	setevent EVENT_SECRET_ELEVATOR_OPEN
	turnobject SITERUIN_ELM, DOWN
	refreshscreen
	opentext
	trainerpic ELM	
	writetext ElmDirectionsText2
	waitbutton
	closetrainpic
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setflag wVisitedSpawns, SPAWN_THESITEINSIDE1F
	setscene SCENE_FINISHED
	end

RuinEntrance_ConfirmPurchaseScript:
	writetext ElmText_YouSure
	yesorno
	end
	
LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end	
		
SecretElevatorScript:
	warp A1, 4, 4
	end
		
ElmsLab_CantLeaveMovement:
	step UP
	step_end
	
WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step_end		
		
	
ElmText_Intro:
	text "ELM: <PLAY_G>!"
	line "There you are!"

	para "Well, today's the"
	line "day!"
	
	para "You don't know?"

	para "Today is your"
	line "13th Birthday!"

	para "That means the"
	line "government has"
	
	para "decided that you"
	line "are old enough to"
	cont "explore The Ruins!"

	para "I'm sure you must"
	line "be very excited to"
	cont "follow this odd,"

	para "and potentially"
	line "scary tradition!" 

	para "But we can't have"
	line "you underground by"
	cont "yourself!"

	para "You get to pick"
	line "your very first"
	cont "ANIMAL friend!"

	para "So!"

	para "I'd like you to"
	line "go with an ANIMAL"

	para "that I recently"
	line "caught."
	done
	

ElmDirectionsText1:
	text "Well, now that"
	line "that's over."

	para "You can go over"
	line "introductions a"
	cont "a bit later."
	
	para "But first..."
	done
	
ElmDirectionsText2:
	text "So I have a flare"
	line "for the dramatic?"
	cont "Sue me."

	para "That elevator will"
	line "take you to the"
	cont "ruin entrance."
	
	para "It's one way, so"
	line "make sure you're"
	cont "stocked up."
	
	para "I'll see you when"
	line "you inevitably"
	cont "panic and faint!"

	para "..."
	
	para "Oh!"
	
	para "I almost forgot."
	line "Don't forget to go"
	
	para "see PROF. OAK at"
	line "the ol' Digging"
	cont "Academy."
	
	para "He has your"
	line "ANMLDEX."
	
	para "See you later!"
	done
	
ElmText_ChooseAPokemon:
	text "You'll be this"
	line "ANIMAL's first"
	cont "owner, <PLAY_G>!"

	para "There's no such"
	line "thing as a bad"
	cont "choice."

	para "Go on. Pick one"
	line "from this handy"
	cont "menu I made!"	
	done

ElmText_YouSure:
	text "Are you sure you"
	line "want to spend your"
	cont "time with THAT?"
	done

ElmText_LetYourMonBattleIt:
	text "If a wild ANIMAL"
	line "appears, let your"
	cont "ANIMAL fight it!"
	done
LabWhereGoingText:
	text "ELM: Wait! Where"
	line "are you going?"
	done

TakeScrawnyText:
	text "ELM: You'll take"
	line "SCRAWNY, the"
	cont "FIGHTING ANIMAL?"
	done

TakeBatText:
	text "ELM: You'll take"
	line "BAT, the"
	cont "POISON ANIMAL?"
	done

TakeRaptorText:
	text "ELM: You'll take"
	line "RAPTOR, the"
	cont "GROUND ANIMAL?"
	done

TakeTheRockText:
	text "ELM: You'll take"
	line "THE ROCK, the"
	cont "ROCK ANIMAL?"
	done
	
TakeLarvaText:
	text "ELM: You'll take"
	line "LARVA, the"
	cont "BUG ANIMAL?"
	done
	
TakeSlimeText:
	text "ELM: You'll take"
	line "SLIME, the"
	cont "COPY ANIMAL?"
	
	para "That's really for"
	line "advanced players."
	
	para "Are you sure?"
	done
	
TakeSkunkText:
	text "ELM: You'll take"
	line "SKUNK, the"
	cont "FIRE ANIMAL?"
	done	

TakeSeaTurtleText:
	text "ELM: You'll take"
	line "SEA TURTLE, the"
	cont "WATER ANIMAL?"
	done
	
TakeSquirrelText:
	text "ELM: You'll take"
	line "SQUIRREL, the"
	cont "GRASS ANIMAL?"
	done
	
TakeLambText:
	text "ELM: You'll take"
	line "LAMB, the"
	cont "ELECTRIC ANIMAL?"
	done

DidntChooseStarterText:
	text "ELM: Think it over"
	line "carefully."

	para "No givebacks or"
	line "refunds."
	done

ChoseStarterText:
	text "ELM: I think that"
	line "ANIMAL was a bad"
	cont "choice!"
	done

ReceivedStarterText:
	text "<PLAYER> rescued"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done
	
ElmPokeBallText:
	text "It contains an"
	line "ANIMAL caught by"
	cont "PROF.ELM."
	done


	

TheSiteInsideRuinEntrance_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  8,  9, THESITEINSIDE1F, 7
	warp_event  9,  9, THESITEINSIDE1F, 8


	def_coord_events	
	coord_event  8,  7, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  9,  7, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript

	coord_event  8,  0, SCENE_RANDOMSTAIRS, SecretElevatorScript
	coord_event  9,  0, SCENE_RANDOMSTAIRS, SecretElevatorScript

	def_bg_events

	def_object_events
	object_event  6,  4, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
