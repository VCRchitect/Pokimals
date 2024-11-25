	object_const_def
	const BMONSTERSHINY


BShiny_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks

.DummyScene:
	end

RandomStairWarpBShiny:
	warperB
	
Monster1BShiny:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	readvar VAR_BADGES
	ifequal 0, nobadgeBSHIN
	ifequal 1, onebadgeBSHIN
	ifequal 2, twobadgeBSHIN
	ifequal 3, threebadgeBSHIN
	ifequal 4, fourbadgeBSHIN
	ifequal 5, fivebadgeBSHIN
	ifequal 6, sixbadgeBSHIN
	ifequal 7, sevenbadgeBSHIN
	ifequal 8, eightbadgeBSHIN
	end
		
nobadgeBSHIN:
	RuinRandomBBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

onebadgeBSHIN:
	RuinRandomB1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

twobadgeBSHIN:
	RuinRandomB2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

threebadgeBSHIN:
	RuinRandomB3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

fourbadgeBSHIN:
	RuinRandomB4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

fivebadgeBSHIN:
	RuinRandomB5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

sixbadgeBSHIN:
	RuinRandomB6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

sevenbadgeBSHIN:
	RuinRandomB7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end

eightbadgeBSHIN:
	RuinRandomB8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	readmem wRoomDefeatedCount
	addval 1
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoorsBSHIN
	end	
	
UnlockDoorsBSHIN:
	playsound SFX_3RD_PLACE 
	opentext
	writetext ButtonTextBSHIN
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
	
ButtonTextBSHIN:
	text "Room Clear!"
	done

BShiny_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpBShiny
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpBShiny
	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Monster1BShiny, -1
