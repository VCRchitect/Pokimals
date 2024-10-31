	object_const_def
	const ARUINS_BOSS

ABOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossA:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	RuinABoss	
	startbattle
	reloadmapafterbattle	
	disappear ARUINS_BOSS
	end
	
	

ABOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	


	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_BARGHEST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BossA, -1
