	object_const_def
	const AMONSTERSHINY


AShiny_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED	
	
	def_callbacks

.DummyScene:
	end

RandomStairWarpAShiny:
	warper
	
Monster1AShiny:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	readvar VAR_BADGES
	ifequal 0, nobadgeASHIN
	ifequal 1, onebadgeASHIN
	ifequal 2, twobadgeASHIN
	ifequal 3, threebadgeASHIN
	ifequal 4, fourbadgeASHIN
	ifequal 5, fivebadgeASHIN
	ifequal 6, sixbadgeASHIN
	ifequal 7, sevenbadgeASHIN
	ifequal 8, eightbadgeASHIN
	end
		
nobadgeASHIN:
	RuinRandomABase
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2
	end

onebadgeASHIN:
	RuinRandomA1
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

twobadgeASHIN:
	RuinRandomA2
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

threebadgeASHIN:
	RuinRandomA3
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

fourbadgeASHIN:
	RuinRandomA4
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

fivebadgeASHIN:
	RuinRandomA5
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

sixbadgeASHIN:
	RuinRandomA6
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

sevenbadgeASHIN:
	RuinRandomA7
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end

eightbadgeASHIN:
	RuinRandomA8
	startbattle
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500	
	disappear -2

	end	
	
UnlockDoorsASHIN:
	playsound SFX_3RD_PLACE 
	opentext
	writetext ButtonTextASHIN
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
	
ButtonTextASHIN:
	text "Room Clear!"
	done

AShiny_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	coord_event  4,  0, SCENE_RANDOMSTAIRS, RandomStairWarpAShiny
	coord_event  5,  0, SCENE_RANDOMSTAIRS, RandomStairWarpAShiny
	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Monster1AShiny, -1
