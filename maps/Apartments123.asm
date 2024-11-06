	object_const_def
	const APT123_NPC1
	const APT123_NPC2
	const APT123_NPC3
	const APT123_NPC4
	const APT123_NPC5
	const APT123_NPC6
	const APT123_NPC7

Apartments123_MapScripts:
	def_scene_scripts

	def_callbacks

NPCCoolTrainerMApt1:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCCoolTrainerFApt1:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCSuperNerdApt1:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCCPokeFanMApt1:
	faceplayer
	refreshscreen
	opentext
	trainerpic HIKER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCSailorApt1:
	faceplayer
	refreshscreen
	opentext
	trainerpic SAILOR
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCGentlemanApt1:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCPharmacistApt1:
	faceplayer
	refreshscreen
	opentext
	trainerpic BURGLAR
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end


Apartments123_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, APARTMENT_HALL, 1
	warp_event  4,  7, APARTMENT_HALL, 1
	warp_event  5, 19, APARTMENT_HALL, 2
	warp_event  4, 19, APARTMENT_HALL, 2
	warp_event  5, 31, APARTMENT_HALL, 3
	warp_event  4, 31, APARTMENT_HALL, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NPCCoolTrainerMApt1, -1
	object_event  1,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NPCCoolTrainerFApt1, -1
	object_event  1,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NPCSuperNerdApt1, -1
	object_event  4, 17, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NPCCPokeFanMApt1, -1
	object_event  4, 26, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NPCSailorApt1, -1
	object_event  7, 30, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NPCGentlemanApt1, -1
	object_event  2, 30, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NPCPharmacistApt1, -1
