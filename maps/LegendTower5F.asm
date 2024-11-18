	object_const_def
	const TOWERDEVIL

LegendTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

JerzyDevil:
	faceplayer
	refreshscreen
	pokepic JERZYDEVIL
	cry JERZYDEVIL
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon JERZYDEVIL, 99
	startbattle
	disappear TOWERDEVIL
	reloadmapafterbattle
	refreshscreen
	playsound SFX_STRENGTH
	earthquake 80
	closetext	
	warp PLAYERS_HOUSE_2F, 3, 3
	end

	
LegendTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, LEGENDTOWER4F, 1


	def_coord_events

	def_bg_events	

	def_object_events
	object_event  6,  4, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JerzyDevil, EVENT_FOUGHT_FAKE_BUSH
