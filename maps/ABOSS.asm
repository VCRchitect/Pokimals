	object_const_def
	const ARUINS_BOSS

ABOSS_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end
	
	
BossA:	
	faceplayer
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	readvar VAR_BADGES
	ifequal 0, nobadgeABoss
	ifequal 1, onebadgeABoss
	ifequal 2, twobadgeABoss
	ifequal 3, threebadgeABoss
	ifequal 4, fourbadgeABoss
	ifequal 5, fivebadgeABoss
	ifequal 6, sixbadgeABoss
	ifequal 7, sevenbadgeABoss
	ifequal 8, eightbadgeABoss
	end
	
		
nobadgeABoss:
	RuinRandomABossBase
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

onebadgeABoss:
	RuinRandomABoss1
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

twobadgeABoss:
	RuinRandomABoss2
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

threebadgeABoss:
	RuinRandomABoss3
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fourbadgeABoss:
	RuinRandomABoss4
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

fivebadgeABoss:
	RuinRandomABoss5
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sixbadgeABoss:
	RuinRandomABoss6
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

sevenbadgeABoss:
	RuinRandomABoss7
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end

eightbadgeABoss:
	RuinRandomABoss8
	startbattle
	reloadmapafterbattle	
	disappear -2
	readmem wRoomDefeatedCount
	setval 5
	writemem wRoomDefeatedCount
	ifequal RUINA_TARGET_DEFEATS, UnlockDoors
	end	
	

UnlockDoorsABoss:
	opentext
	writetext ButtonText
	promptbutton
	closetext
	refreshscreen
	playsound SFX_ENTER_DOOR
	waitsfx
	changeblock 2, 0, 11
	reloadmappart
	readmem wRoomDefeatedCount
	setval 0
	writemem wRoomDefeatedCount		
	end



ABOSS_MapEvents:
	db 0, 0 ; filler
	def_warp_events

	def_coord_events
	
	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_BARGHEST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BossA, -1
