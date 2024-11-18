	object_const_def
	const WHIRLISLANDRYUJINCHAMBER_RYUJIN
	const TINTOWERROOF_PHOENIX
	const TOWER_MONSTER1TF2
	const TOWER_MONSTER2TF2
	const TOWER_MONSTER3TF2	


LegendTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

Ryujin:
	faceplayer
	refreshscreen
	pokepic RYUJIN
	cry RYUJIN
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon RYUJIN, 80
	startbattle
	disappear WHIRLISLANDRYUJINCHAMBER_RYUJIN
	reloadmapafterbattle
	end

Phoenix:
	faceplayer
	refreshscreen
	pokepic PHOENIX
	cry PHOENIX
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon PHOENIX, 80
	startbattle
	disappear TINTOWERROOF_PHOENIX
	reloadmapafterbattle
	end
	
Monster1TF2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomDBoss8
	startbattle
	reloadmapafterbattle	
	disappear -2
	end

Monster2TF2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomEBoss8
	startbattle
	reloadmapafterbattle	
	disappear -2
	end

Monster3TF2:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomZBoss8
	startbattle
	reloadmapafterbattle	
	disappear -2
	end	
	

LegendTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 11, LEGENDTOWER3F, 2
	warp_event 10,  0, LEGENDTOWER1F, 1


	def_coord_events

	def_bg_events	

	def_object_events
	object_event  4, 11, SPRITE_RYUJIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Ryujin, EVENT_WHIRL_ISLAND_RYUJIN_CHAMBER_RYUJIN
	object_event 17, 11, SPRITE_PHOENIX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Phoenix, EVENT_TIN_TOWER_ROOF_PHOENIX
	object_event 14,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1TF2, -1
	object_event  8,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2TF2, -1
	object_event 11,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3TF2, -1	

