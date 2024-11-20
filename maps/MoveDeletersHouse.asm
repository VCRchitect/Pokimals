	object_const_def
	const MOVEDELETERSHOUSE_SUPER_NERD

MoveDeletersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MoveDeleter:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .MoveDeleterRambles
	faceplayer
	opentext
	special MoveDeletion
	waitbutton
	closetext
	end

.MoveDeleterRambles
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end

MoveRelearnerScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .MoveRelearnerRambles
	faceplayer
	opentext
	special MoveRelearner
	waitbutton
	closetext
	end

.MoveRelearnerRambles
	faceplayer
	refreshscreen
	opentext
	trainerpic MEDIUM
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end


MoveDeletersHouseBookshelf:
	jumpstd DifficultBookshelfScript

MoveDeletersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ISLANDSOUTH, 1
	warp_event  3,  7, ISLANDSOUTH, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MoveDeletersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MoveDeletersHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveDeleter, -1
	object_event  5,  4, SPRITE_GRANNY, 	SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveRelearnerScript, -1
