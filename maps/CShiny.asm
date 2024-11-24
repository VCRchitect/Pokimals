	object_const_def
	const CMONSTERSHINY


CShiny_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks

.DummyScene:
	end

RandomStairWarpCShiny:
	warperC
	
Monster1CShiny:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	readvar VAR_BADGES
	ifequal 0, nobadgeCSHIN
	ifequal 1, onebadgeCSHIN
	ifequal 2, twobadgeCSHIN
	ifequal 3, threebadgeCSHIN
	ifequal 4, fourbadgeCSHIN
	ifequal 5, fivebadgeCSHIN
	ifequal 6, sixbadgeCSHIN
	ifequal 7, sevenbadgeCSHIN
	ifequal 8, eightbadgeCSHIN
	end
		
nobadgeCSHIN:
	RuinRandomCBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

onebadgeCSHIN:
	RuinRandomC1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

twobadgeCSHIN:
	RuinRandomC2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

threebadgeCSHIN:
	RuinRandomC3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

fourbadgeCSHIN:
	RuinRandomC4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

fivebadgeCSHIN:
	RuinRandomC5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

sixbadgeCSHIN:
	RuinRandomC6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

sevenbadgeCSHIN:
	RuinRandomC7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end

eightbadgeCSHIN:
	RuinRandomC8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsCSHIN
	end	
	
UnlockDoorsCSHIN:
	playsound SFX_3RD_PLACE 
	opentext
	writetext ButtonTextCSHIN
	promptbutton
	closetext
	refreshscreen
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0B
	reloadmappart
	closetext
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end
	
ButtonTextCSHIN:
	text "Room Clear!"
	done

CShiny_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpCShiny
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpCShiny
	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Monster1CShiny, -1
