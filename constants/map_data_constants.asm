MAPGROUP_N_A  EQU -1
GROUP_N_A     EQU -1
MAP_N_A       EQU -1
MAPGROUP_NONE EQU 0
GROUP_NONE    EQU 0
MAP_NONE      EQU 0

RUINA_TARGET_DEFEATS EQU 5
RUINB_TARGET_DEFEATS EQU 5
RUINC_TARGET_DEFEATS EQU 5
RUIND_TARGET_DEFEATS EQU 5
RUINE_TARGET_DEFEATS EQU 5
RUINF_TARGET_DEFEATS EQU 5


; map struct members (see data/maps/maps.asm)
rsreset
MAP_MAPATTRIBUTES_BANK rb ; 0
MAP_TILESET            rb ; 1
MAP_ENVIRONMENT        rb ; 2
MAP_MAPATTRIBUTES      rw ; 3
MAP_LOCATION           rb ; 5
MAP_MUSIC              rb ; 6
MAP_PALETTE            rb ; 7
MAP_FISHGROUP          rb ; 8
MAP_LENGTH EQU _RS

; map environments (wEnvironment)
; EnvironmentColorsPointers indexes (see data/maps/environment_colors.asm)
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const ENVIRONMENT_5
	const GATE
	const DUNGEON
NUM_ENVIRONMENTS EQU const_value - 1

; map palettes (wEnvironment)
	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_EVE
NUM_MAP_PALETTES EQU const_value

IN_DARKNESS_F EQU 3
IN_DARKNESS EQU 1 << IN_DARKNESS_F ; masked with a PALETTE_* constant

; FishGroups indexes (see data/wild/fish.asm)
	const_def
	const FISHGROUP_NONE
	const FISHGROUP_SHORE
	const FISHGROUP_OCEAN
	const FISHGROUP_LAKE
	const FISHGROUP_POND
	const FISHGROUP_SERPENT
	const FISHGROUP_BLOWFISH_SWARM
	const FISHGROUP_REMORA_SWARM
	const FISHGROUP_INKANYAMBA
	const FISHGROUP_SERPENT_2
	const FISHGROUP_WHIRL_ISLANDS
	const FISHGROUP_BLOWFISH
	const FISHGROUP_REMORA
	const FISHGROUP_BLOWFISH_NO_SWARM
NUM_FISHGROUPS EQU const_value - 1

; connection directions (see data/maps/data.asm)
	const_def
	const EAST_F
	const WEST_F
	const SOUTH_F
	const NORTH_F

; wMapConnections
	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH

; SpawnPoints indexes (see data/maps/spawn_points.asm)
	const_def
	const SPAWN_HOME
	
; kanto
	const SPAWN_INDIGO
; johto
	const SPAWN_NEW_BARK
	const SPAWN_PLAYERYARD
	const SPAWN_FAST_SHIP
	const SPAWN_THESITEINSIDE1F
DEF NUM_SPAWNS EQU const_value

DEF SPAWN_N_A EQU -1

; Flypoints indexes (see data/maps/flypoints.asm)
	const_def
; johto
JOHTO_FLYPOINT EQU const_value
	const FLY_NEW_BARK
	const FLY_CHERRYGROVE
	const FLY_VIOLET
	const FLY_AZALEA
	const FLY_GOLDENROD
	const FLY_ECRUTEAK
	const FLY_OLIVINE
	const FLY_CIANWOOD
	const FLY_MAHOGANY
	const FLY_LAKE_OF_RAGE
	const FLY_BLACKTHORN
	const FLY_MT_SILVER
; kanto
KANTO_FLYPOINT EQU const_value
	const FLY_PALLET
	const FLY_VIRIDIAN
	const FLY_PEWTER
	const FLY_CERULEAN
	const FLY_VERMILION
	const FLY_ROCK_TUNNEL
	const FLY_LAVENDER
	const FLY_CELADON
	const FLY_SAFFRON
	const FLY_FUCHSIA
	const FLY_CINNABAR
	const FLY_INDIGO
NUM_FLYPOINTS EQU const_value

MAX_OUTDOOR_SPRITES EQU 23 ; see engine/overworld/overworld.asm
