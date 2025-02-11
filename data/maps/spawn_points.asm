MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,            3,  3



; kanto
	spawn INDIGO_PLATEAU_POKECENTER_1F,  7,  9
; johto
	spawn NEW_BARK_TOWN, 				5, 5
	spawn PLAYERYARD,               5,  8
	spawn NONE,                          6,  2
	spawn THESITEINSIDE1F, 					12, 18
	spawn N_A,                          -1, -1

	assert_table_length NUM_SPAWNS + 1
