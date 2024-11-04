	object_const_def
	const THESITECAFE_SAILOR1
	const THESITECAFE_FISHING_GURU
	const THESITECAFE_SAILOR2

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
