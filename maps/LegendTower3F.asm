	object_const_def
	const TOWERYETI
	const TOWERFIREBIRD
	const TOWERTHUNDABIRD
	const TOWER_MONSTER1TF3
	const TOWER_MONSTER2TF3
	const TOWER_MONSTER3TF3

LegendTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

Yeti:
	faceplayer
	refreshscreen
	pokepic YETI
	cry YETI
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon YETI, 85
	startbattle
	disappear TOWERYETI
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end

Firebird:
	faceplayer
	refreshscreen
	pokepic FIREBIRD
	cry FIREBIRD
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon FIREBIRD, 85
	startbattle
	disappear TOWERFIREBIRD
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end
	
Thundabird:
	faceplayer
	refreshscreen
	pokepic THUNDABIRD
	cry THUNDABIRD
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon THUNDABIRD, 85
	startbattle
	disappear TOWERTHUNDABIRD
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	end
	
Monster1TF3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomABoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end

Monster2TF3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomBBoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end

Monster3TF3:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	RuinRandomCBoss8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end	
		
	
	
LegendTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 12, LEGENDTOWER4F, 2
	warp_event 18, 12, LEGENDTOWER2F, 1


	def_coord_events

	def_bg_events	

	def_object_events
	object_event 11,  2, SPRITE_PANDA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Yeti, EVENT_FOUGHT_PANDA
	object_event  2,  2, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Firebird, EVENT_MET_BILLS_GRANDPA
	object_event 19,  2, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Thundabird, EVENT_SHOWED_PERVERT_TO_BILLS_GRANDPA
	object_event  2,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster1TF3, -1
	object_event 19,  9, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster2TF3, -1
	object_event 11, 10, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Monster3TF3, -1		
