MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup CABLE_CLUB                                           ;  1
	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	endgroup

	newgroup BATTLE_TOWER                                         ;  2
	endgroup

	newgroup NEW_BARK                                             ;  3
	map_const PLAYERYARD,                               5,  7 ;  1
	map_const THESITEOUTSIDE,									11, 13 ; 5
	map_const ISLANDSOUTH,										11, 8 ; 3
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  2
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  4
	map_const ISLANDNAMERATER, 									4, 4 ; 6
	map_const MOVEDELETERSHOUSE,								4, 4 ;	7
	map_const DAY_CARE,											5, 4;  8
	map_const NEW_BARK_TOWN,									10, 9 ; 9
	map_const SITEGATE,                  					5,  4 ; 10
	map_const THESITEINSIDE1F,									13, 11 ; 11
	map_const THESITEPOKECENTER1F,									5, 4 ; 12
	map_const THESITEMART,											8, 4 ; 13
	map_const THESITEGAMECORNER,									10, 7 ; 14
	map_const THESITECAFE,											4, 4 ; 15	
	map_const THESITEINSIDERUINENTRANCE,							9, 7 ; 16
	map_const THESITEINSIDETEACHERHALL,								7, 19; 17
	map_const APARTMENT_HALL,										15, 3; 18
	map_const APARTMENTS123,										4, 16; 19
	map_const APARTMENTS789,										4, 16; 20
	map_const WEIRDCLOSET,											3, 3; 21
	map_const DIGGINGACADEMY,										4, 8; 22
	map_const TEACHER1, 											3, 3; 23
	map_const TEACHER2, 											3, 3; 24
	map_const TEACHER3, 											3, 3; 25
	map_const TEACHER4, 											3, 3; 26
	map_const TEACHER5, 											3, 3; 27
	map_const TEACHER6, 											3, 3; 28
	map_const TEACHER7, 											3, 3; 29
	map_const TEACHER8, 											3, 3; 30
	map_const BADSHED,												3, 3; 31
	endgroup

	newgroup INDIGO                                               ;  4
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  1
	map_const WILLS_ROOM,                                   5,  9 ;  2
	map_const KOGAS_ROOM,                                   5,  9 ;  3
	map_const BRUNOS_ROOM,                                  5,  9 ;  4
	map_const KARENS_ROOM,                                  5,  9 ;  5
	map_const LANCES_ROOM,                                  5, 12 ;  6
	map_const HALL_OF_FAME,                                 5,  7 ;  7
	endgroup
	
	newgroup RUINSA											; 5
	map_const A1, 5, 3 ; 1
	map_const A2, 5, 5 ; 2
	map_const A3, 9, 7 ; 3
	map_const A4, 9, 5 ; 4
	map_const A5, 5, 5 ; 5
	map_const A6, 5, 5 ; 6
	map_const A7, 7, 3 ; 7
	map_const A8, 5, 5 ; 8
	map_const A9, 7, 5 ; 9
	map_const A10, 7, 5 ; 10
	map_const A11, 7, 3 ; 11
	map_const A12, 5, 3 ; 12
	map_const AMART, 5, 3 ; 13	
	map_const AHEAL, 5, 3 ; 14
	map_const APREBOSS, 5, 3 ; 15
	map_const ABOSS, 5, 5 ; 16
	endgroup






DEF NUM_MAP_GROUPS EQU const_value ; 5
