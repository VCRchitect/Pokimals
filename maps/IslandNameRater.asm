	object_const_def
	const ISLANDNAMERATER_NAME_RATER

IslandNameRater_MapScripts:
	def_scene_scripts

	def_callbacks

IslandNameRater:
	checkevent EVENT_GOT_A_MON
	iffalse .NameRaterRambles
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	special NameRater
	waitbutton
	closetrainpic
	closetext
	end

.NameRaterRambles
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end



IslandNameRaterBookshelf:
	jumpstd DifficultBookshelfScript

IslandNameRaterRadio:
	jumpstd Radio2Script

INCLUDE "data/text/unused_sweet_honey.asm"

IslandNameRater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ISLANDSOUTH, 2
	

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, IslandNameRaterBookshelf
	bg_event  1,  1, BGEVENT_READ, IslandNameRaterBookshelf
	bg_event  7,  1, BGEVENT_READ, IslandNameRaterRadio

	def_object_events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IslandNameRater, -1
