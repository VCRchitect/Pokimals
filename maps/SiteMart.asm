	object_const_def
	const THESITEMART_CLERK1
	const THESITEMART_CLERK2
	const THESITEMART_CLERK3
	const THESITEMART_CLERK4
	const THESITEMART_GENTLEMAN
	const THESITEMART_SAILOR
	const THESITEMART_TEACHER

TheSiteMart_MapScripts:
	def_scene_scripts

	def_callbacks

TheSiteMartClerk1Script:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifequal 0, .nobadgeclerk1
	ifequal 1, .onebadgeclerk1
	ifequal 2, .twobadgeclerk1
	ifequal 3, .threebadgeclerk1
	ifequal 4, .fourbadgeclerk1
	ifequal 5, .fivebadgeclerk1
	ifequal 6, .sixbadgeclerk1
	ifequal 7, .sevenbadgeclerk1
	ifequal 8, .eightbadgeclerk1	
	
.nobadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETMBASE
	closetext
	end

.onebadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETM1
	closetext
	end

.twobadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETM2
	closetext
	end

.threebadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETM3
	closetext
	end

.fourbadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETM4
	closetext
	end

.fivebadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETM5
	closetext
	end

.sixbadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETM6
	closetext
	end

.sevenbadgeclerk1
	pokemart MARTTYPE_STANDARD, MART_SITETM7
	closetext
	end

.eightbadgeclerk1	
	pokemart MARTTYPE_STANDARD, MART_SITETM8
	closetext
	end

TheSiteMartClerk2Script:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifequal 0, .nobadgeclerk12
	ifequal 1, .onebadgeclerk12
	ifequal 2, .twobadgeclerk12
	ifequal 3, .threebadgeclerk12
	ifequal 4, .fourbadgeclerk12
	ifequal 5, .fivebadgeclerk12
	ifequal 6, .sixbadgeclerk12
	ifequal 7, .sevenbadgeclerk12
	ifequal 8, .eightbadgeclerk12	
	
.nobadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETMBASE2
	closetext
	end

.onebadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETM12
	closetext
	end

.twobadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETM22
	closetext
	end

.threebadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETM32
	closetext
	end

.fourbadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETM42
	closetext
	end

.fivebadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETM52
	closetext
	end

.sixbadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETM62
	closetext
	end

.sevenbadgeclerk12
	pokemart MARTTYPE_STANDARD, MART_SITETM72
	closetext
	end

.eightbadgeclerk12	
	pokemart MARTTYPE_STANDARD, MART_SITETM82
	closetext
	end

TheSiteMartClerk4Script:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifequal 0, .nobadgeclerk2
	ifequal 1, .onebadgeclerk2
	ifequal 2, .twobadgeclerk2
	ifequal 3, .threebadgeclerk2
	ifequal 4, .fourbadgeclerk2
	ifequal 5, .fivebadgeclerk2
	ifequal 6, .sixbadgeclerk2
	ifequal 7, .sevenbadgeclerk2
	ifequal 8, .eightbadgeclerk2	
	
.nobadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLDBASE
	closetext
	end

.onebadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD1
	closetext
	end

.twobadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD2
	closetext
	end

.threebadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD3
	closetext
	end

.fourbadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD4
	closetext
	end

.fivebadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD5
	closetext
	end

.sixbadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD6
	closetext
	end

.sevenbadgeclerk2
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD7
	closetext
	end

.eightbadgeclerk2	
	pokemart MARTTYPE_STANDARD, MART_SITEHOLD8
	closetext
	end
	
TheSiteMartClerk3Script:
	faceplayer
	opentext
	readvar VAR_BADGES
	ifequal 0, .okay
	ifequal 1, .okay
	ifequal 2, .okay
	ifequal 3, .good
	ifequal 4, .good
	ifequal 5, .good
	ifequal 6, .great
	ifequal 7, .great
	ifequal 8, .great	
	
	
.okay
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

.good
	pokemart MARTTYPE_STANDARD, MART_ECRUTEAK
	closetext
	end

.great
	pokemart MARTTYPE_STANDARD, MART_INDIGO_PLATEAU
	closetext
	end
	

TheSiteMartGentlemanScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TheSiteMartSailorScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAILOR
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TheSiteMartTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	

TheSiteMartGentlemanText:
	text "I buy people drugs"
	line "but I give them to"
	
	para "my ANIMALs because"
	line "I'm a cheapskate."
	done

TheSiteMartSailorText:
	text "I want PP UP, so I"
	line "can raise the PP"

	para "of moves. But you"
	line "can't buy it..."
	
	para "Well, not in the"
	line "traditional sense."
	
	para "I buy PP UP when"
	line "I'm lonely or want"
	cont "to cuddle."
	done

TheSiteMartTeacherText:
	text "Some ANIMALs have"
	line "strong opinions."
	done

TheSiteMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, THESITEINSIDE1F, 2
	warp_event  2,  7, THESITEINSIDE1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheSiteMartClerk3Script, -1
	object_event 15,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheSiteMartClerk1Script, -1
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheSiteMartClerk2Script, -1
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheSiteMartClerk4Script, -1
	object_event  7,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheSiteMartGentlemanScript, -1
	object_event  3,  4, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheSiteMartSailorScript, -1
	object_event 10,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TheSiteMartTeacherScript, -1
