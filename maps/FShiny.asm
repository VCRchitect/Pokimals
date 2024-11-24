	object_const_def
	const FMONSTERSHINY


FShiny_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks

.DummyScene:
	end

RandomStairWarpFShiny:
	warperF
	
Monster1FShiny:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	readvar VAR_BADGES
	ifequal 0, nobadgeFSHIN
	ifequal 1, onebadgeFSHIN
	ifequal 2, twobadgeFSHIN
	ifequal 3, threebadgeFSHIN
	ifequal 4, fourbadgeFSHIN
	ifequal 5, fivebadgeFSHIN
	ifequal 6, sixbadgeFSHIN
	ifequal 7, sevenbadgeFSHIN
	ifequal 8, eightbadgeFSHIN
	end
		
nobadgeFSHIN:
	RuinRandomZBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

onebadgeFSHIN:
	RuinRandomZ1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

twobadgeFSHIN:
	RuinRandomZ2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

threebadgeFSHIN:
	RuinRandomZ3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

fourbadgeFSHIN:
	RuinRandomZ4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

fivebadgeFSHIN:
	RuinRandomZ5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

sixbadgeFSHIN:
	RuinRandomZ6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

sevenbadgeFSHIN:
	RuinRandomZ7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end

eightbadgeFSHIN:
	RuinRandomZ8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsFSHIN
	end	
	
UnlockDoorsFSHIN:
	playsound SFX_3RD_PLACE 
	opentext
	writetext ButtonTextFSHIN
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
	
ButtonTextFSHIN:
	text "Room Clear!"
	done

FShiny_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFShiny
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpFShiny
	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Monster1FShiny, -1
