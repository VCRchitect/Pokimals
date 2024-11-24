	object_const_def
	const EMONSTERSHINY


EShiny_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks

.DummyScene:
	end

RandomStairWarpEShiny:
	warperE
	
Monster1EShiny:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	readvar VAR_BADGES
	ifequal 0, nobadgeESHIN
	ifequal 1, onebadgeESHIN
	ifequal 2, twobadgeESHIN
	ifequal 3, threebadgeESHIN
	ifequal 4, fourbadgeESHIN
	ifequal 5, fivebadgeESHIN
	ifequal 6, sixbadgeESHIN
	ifequal 7, sevenbadgeESHIN
	ifequal 8, eightbadgeESHIN
	end
		
nobadgeESHIN:
	RuinRandomEBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

onebadgeESHIN:
	RuinRandomE1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

twobadgeESHIN:
	RuinRandomE2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

threebadgeESHIN:
	RuinRandomE3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

fourbadgeESHIN:
	RuinRandomE4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

fivebadgeESHIN:
	RuinRandomE5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

sixbadgeESHIN:
	RuinRandomE6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

sevenbadgeESHIN:
	RuinRandomE7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end

eightbadgeESHIN:
	RuinRandomE8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsESHIN
	end	
	
UnlockDoorsESHIN:
	playsound SFX_3RD_PLACE 
	opentext
	writetext ButtonTextESHIN
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
	
ButtonTextESHIN:
	text "Room Clear!"
	done

EShiny_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpEShiny
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpEShiny
	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Monster1EShiny, -1
