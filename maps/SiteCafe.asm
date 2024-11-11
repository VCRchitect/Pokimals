	object_const_def
	const THESITECAFE_SAILOR1
	const THESITECAFE_FISHING_GURU
	const THESITECAFE_SAILOR2
	const THESITECAFE_COOLTRAINER_M
	const THESITECAFE_SUPER_NERD	

TheSiteCafe_MapScripts:
	def_scene_scripts

	def_callbacks

TheSiteCafeStrengthSailorScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end


TheSiteCafeFishingGuruScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TheSiteCafeSailorScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

GameFreakGameDesignerScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	writetext GameFreakGameDesignerText
	readvar VAR_DEXCAUGHT
	ifgreater NUM_POKEMON - 2 - 1, .CompletedPokedex ; ignore Brain and JerzyDevil
	waitbutton
	closetrainpic
	closetext
	end

.CompletedPokedex:
	promptbutton
	writetext GameFreakGameDesignerCompletedPokedexText
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext GameFreakGameDesignerPauseForDiplomaText
	promptbutton
	special Diploma
	writetext GameFreakGameDesignerAfterDiplomaText
	waitbutton
	closetrainpic
	closetext
	setevent EVENT_ENABLE_DIPLOMA_PRINTING
	end

GameFreakGraphicArtistScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iftrue .CanPrintDiploma
	writetext GameFreakGraphicArtistText
	waitbutton
	closetrainpic
	closetext
	end

.CanPrintDiploma:
	writetext GameFreakGraphicArtistPrintDiplomaText
	yesorno
	iffalse .Refused
	special PrintDiploma
	closetrainpic
	closetext
	end

.Refused:
	writetext GameFreakGraphicArtistRefusedText
	waitbutton
	closetrainpic
	closetext
	end

.CancelPrinting: ; unreferenced
	writetext GameFreakGraphicArtistErrorText
	waitbutton
	closetext
	end

GameFreakGameDesignerText:
	text "Filling up your"
	line "ANMLDEX is tough,"
	cont "but don't give up!"
	done

GameFreakGameDesignerCompletedPokedexText:
	text "Wow! Excellent!"
	line "You completed your"
	cont "ANMLDEX!"

	para "Congratulations!"
	done

GameFreakGameDesignerPauseForDiplomaText:
	text "..."
	done

GameFreakGameDesignerAfterDiplomaText:
	text "The SUPER NERD"
	line "will print out a"
	cont "DIPLOMA for you."

	para "You should go show"
	line "it off."
	done

GameFreakGraphicArtistText:
	text "I'm the SUPER"
	line "NERD, apparently."

	para "I drew you!"
	
	para "It's a crude"
	line "portrait of you,"
	cont "but as a furry."
	done

GameFreakGraphicArtistPrintDiplomaText:
	text "Oh, you completed"
	line "your ANMLDEX?"

	para "Want me to print"
	line "out your DIPLOMA?"
	done

GameFreakGraphicArtistRefusedText:
	text "Give me a shout if"
	line "you want your"
	cont "DIPLOMA printed."
	done

GameFreakGraphicArtistErrorText:
	text "Something's wrong."
	line "I'll have to can-"
	cont "cel printing."
	done
	
TheSiteCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, THESITEINSIDE1F, 4
	warp_event  3,  7, THESITEINSIDE1F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheSiteCafeStrengthSailorScript, -1
	object_event  7,  3, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheSiteCafeFishingGuruScript, -1
	object_event  6,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheSiteCafeSailorScript, -1
	object_event  3,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameFreakGameDesignerScript, -1	
	object_event  2,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameFreakGraphicArtistScript, -1
