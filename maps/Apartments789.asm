	object_const_def
	const APT789_NPC1
	const APT789_NPC2
	const APT789_NPC3
	const APT789_NPC4

Apartments789_MapScripts:
	def_scene_scripts

	def_callbacks

NPCFisherApt7:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCBugCatcherApt7:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCBeautyApt7:
	faceplayer
	refreshscreen
	opentext
	trainerpic BEAUTY
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCGuitaristApt7:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUITARIST
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

Apartments789Trashcan:
	jumpstd TrashCanScript


Apartments789_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, APARTMENT_HALL, 4
	warp_event  3,  7, APARTMENT_HALL, 4
	warp_event  2, 19, APARTMENT_HALL, 5
	warp_event  3, 19, APARTMENT_HALL, 5
	warp_event  2, 31, APARTMENT_HALL, 6
	warp_event  3, 31, APARTMENT_HALL, 6

	def_coord_events

	def_bg_events
	bg_event  7,  7, BGEVENT_READ, Apartments789Trashcan

	def_object_events
	object_event  1, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NPCFisherApt7, -1
	object_event  6, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NPCBugCatcherApt7, -1
	object_event  4,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NPCBeautyApt7, -1
	object_event  3, 28, SPRITE_ROCKER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NPCGuitaristApt7, -1
