	object_const_def
	const SITEGATE_OFFICER
	const SITEGATE_TEACHER


SiteGate_MapScripts:
	def_scene_scripts

	def_callbacks

SiteGateOfficerScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic OFFICER
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
SiteGateTeacherScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic TEACHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end


SiteGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, THESITEOUTSIDE, 1
	warp_event  5,  0, THESITEOUTSIDE, 2
	warp_event  4,  7, ISLANDSOUTH, 6
	warp_event  5,  7, ISLANDSOUTH, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SiteGateOfficerScript, -1
	object_event  6,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SiteGateTeacherScript, -1
