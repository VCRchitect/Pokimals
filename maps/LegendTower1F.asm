	object_const_def
	const TOWERBRAIN
	const TOWERWENDIGO
	const TOWER_MONSTER1TF1
	const TOWER_MONSTER2TF1
	const TOWER_MONSTER3TF1
	


LegendTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

Brain:
	faceplayer
	refreshscreen
	pokepic BRAIN
	cry BRAIN
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon BRAIN, 70
	startbattle
	disappear TOWERBRAIN
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end

Wendigo:
	faceplayer
	refreshscreen
	pokepic WENDIGO
	cry WENDIGO
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon WENDIGO, 70
	startbattle
	disappear TOWERWENDIGO
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end

Monster1TF1:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomABoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end

Monster2TF1:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomBBoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end

Monster3TF1:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomCBoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end


LegendTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  2, LEGENDTOWER2F, 2

	def_coord_events

	def_bg_events	

	def_object_events
	object_event  2,  2, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Brain, EVENT_FOUGHT_EUSINE
	object_event 19,  2, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Wendigo, EVENT_HOLE_IN_BURNED_TOWER
	object_event  7,  9, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1TF1, -1
	object_event 11,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2TF1, -1
	object_event 14,  9, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3TF1, -1	
