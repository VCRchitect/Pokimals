	object_const_def
	const THESITEPOKECENTER1F_NURSE
	const THESITEPOKECENTER1F_GENTLEMAN
	const THESITEPOKECENTER1F_TWIN
	const THESITEPOKECENTER1F_COOLTRAINER_M

TheSitePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

TheSitePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

TheSitePokecenter1FGentlemanScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
	
TheSitePokecenter1FTwinScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic LASS
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TheSitePokecenter1FCooltrainerMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TheSitePokecenter1FGentlemanText:
	text "Sometimes I feel"
	line "like my life is"
	
	para "like a movie."
	line "But, like, a"
	cont "disaster movie."
	done

TheSitePokecenter1FTwinText:
	text "My shoes are new."
	done

TheSitePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, THESITEINSIDE1F, 1
	warp_event  4,  7, THESITEINSIDE1F, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheSitePokecenter1FNurseScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheSitePokecenter1FGentlemanScript, -1
	object_event  1,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TheSitePokecenter1FTwinScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheSitePokecenter1FCooltrainerMScript, -1
