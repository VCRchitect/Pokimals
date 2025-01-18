	object_const_def
	const TOWERBARGHEST
	const TOWERCERBERUS
	const TOWERFENRIR
	const TOWER_MONSTER1TF4
	const TOWER_MONSTER2TF4
	const TOWER_MONSTER3TF4	

LegendTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

Barghest:
	faceplayer
	refreshscreen
	pokepic BARGHEST
	cry BARGHEST
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon BARGHEST, 90
	startbattle
	disappear TOWERBARGHEST
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end

Cerberus:
	faceplayer
	refreshscreen
	pokepic CERBERUS
	cry CERBERUS
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon CERBERUS, 90
	startbattle
	disappear TOWERCERBERUS
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end
	
Fenrir:
	faceplayer
	refreshscreen
	pokepic FENRIR
	cry FENRIR
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon FENRIR, 90
	startbattle
	disappear TOWERFENRIR
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end
	
Monster1TF4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomDBoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end

Monster2TF4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomEBoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end

Monster3TF4:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomZBoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end		
	
LegendTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 12, LEGENDTOWER5F, 1
	warp_event 13, 13, LEGENDTOWER3F, 1


	def_coord_events

	def_bg_events	

	def_object_events
	object_event  4,  8, SPRITE_BARGHEST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Barghest, EVENT_CONTEST_OFFICER_HAS_EVERSTONE
	object_event 17,  8, SPRITE_CERBERUS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Cerberus, EVENT_CONTEST_OFFICER_HAS_SUN_STONE
	object_event 10,  2, SPRITE_FENRIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Fenrir, EVENT_FOUGHT_FENRIR
	object_event 12,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1TF4, -1
	object_event  9,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2TF4, -1
	object_event 10, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3TF4, -1
