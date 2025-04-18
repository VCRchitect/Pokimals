	object_const_def
	const DMONSTERSHINY


DShiny_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks

.DummyScene:
	end

RandomStairWarpDShiny:
	warperD
	
Monster1DShiny:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	readvar VAR_BADGES
	ifequal 0, nobadgeDSHIN
	ifequal 1, onebadgeDSHIN
	ifequal 2, twobadgeDSHIN
	ifequal 3, threebadgeDSHIN
	ifequal 4, fourbadgeDSHIN
	ifequal 5, fivebadgeDSHIN
	ifequal 6, sixbadgeDSHIN
	ifequal 7, sevenbadgeDSHIN
	ifequal 8, eightbadgeDSHIN
	end
		
nobadgeDSHIN:
	RuinRandomDBase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

onebadgeDSHIN:
	RuinRandomD1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

twobadgeDSHIN:
	RuinRandomD2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

threebadgeDSHIN:
	RuinRandomD3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

fourbadgeDSHIN:
	RuinRandomD4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

fivebadgeDSHIN:
	RuinRandomD5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

sixbadgeDSHIN:
	RuinRandomD6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

sevenbadgeDSHIN:
	RuinRandomD7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

eightbadgeDSHIN:
	RuinRandomD8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end	
	
UnlockDoorsDSHIN:
	playsound SFX_3RD_PLACE 
	opentext
	writetext ButtonTextDSHIN
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
	
ButtonTextDSHIN:
	text "Room Clear!"
	done

DShiny_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpDShiny
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpDShiny
	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Monster1DShiny, -1
