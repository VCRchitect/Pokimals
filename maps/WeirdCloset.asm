	object_const_def
	const WEIRDCLOSETNPC1
	const WEIRDCLOSETNPC2

WeirdCloset_MapScripts:
	def_scene_scripts

	def_callbacks

WeirdClosetShop:
	refreshscreen
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_4F
	closetext
	end

WeirdClosetDude:
	faceplayer
	refreshscreen
	opentext
	trainerpic SUPER_NERD
	writetext ClosetDealing
	waitbutton
	closetrainpic
	closetext
	end

ClosetDealing:
	text "You think we're"
	line "selling drugs, but"
	
	para "we got something"
	line "much better..."
	
	para "Vitamins!"
	done


WeirdCloset_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, APARTMENT_HALL, 9
	warp_event  2,  5, APARTMENT_HALL, 9


	def_coord_events

	def_bg_events	

	def_object_events
	object_event  1,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WeirdClosetShop, -1
	object_event  4,  2, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WeirdClosetDude, -1
