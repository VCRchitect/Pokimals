MACRO map_attributes
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
MACRO connection
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

	; LEGACY: Support for old connection macro
	if _NARG == 6
		connection \1, \2, \3, (\4) - (\5)
	else

		; Calculate tile offsets for source (current) and target maps
		DEF _src = 0
		DEF _tgt = (\4) + MAP_CONNECTION_PADDING_WIDTH
		if _tgt < 0
			DEF _src = -_tgt
			DEF _tgt = 0
		endc

		if !STRCMP("\1", "north")
			DEF _blk = \3_WIDTH * (\3_HEIGHT - MAP_CONNECTION_PADDING_WIDTH) + _src
			DEF _map = _tgt
			DEF _win = (\3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * \3_HEIGHT + 1
			DEF _y = \3_HEIGHT * 2 - 1
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "south")
			DEF _blk = _src
			DEF _map = (CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * (CURRENT_MAP_HEIGHT + MAP_CONNECTION_PADDING_WIDTH) + _tgt
			DEF _win = \3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2 + 1
			DEF _y = 0
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "west")
			DEF _blk = (\3_WIDTH * _src) + \3_WIDTH - MAP_CONNECTION_PADDING_WIDTH
			DEF _map = (CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * _tgt
			DEF _win = (\3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * 2 - MAP_CONNECTION_PADDING_WIDTH * 2
			DEF _y = (\4) * -2
			DEF _x = \3_WIDTH * 2 - 1
			DEF _len = CURRENT_MAP_HEIGHT + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		elif !STRCMP("\1", "east")
			DEF _blk = (\3_WIDTH * _src)
			DEF _map = (CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * _tgt + CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH
			DEF _win = \3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2 + 1
			DEF _y = (\4) * -2
			DEF _x = 0
			DEF _len = CURRENT_MAP_HEIGHT + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		else
			fail "Invalid direction for 'connection'."
		endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win

	endc
ENDM

	map_attributes PlayerYard, PLAYERYARD, $05, WEST
	connection west, IslandSouth, ISLANDSOUTH, 0	
	
	map_attributes IslandSouth, ISLANDSOUTH, $05, EAST
	connection east, PlayerYard, PLAYERYARD, 0
	
	map_attributes TheSiteOutside, THESITEOUTSIDE, $00, 0
	
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0

	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0

	map_attributes IslandNameRater, ISLANDNAMERATER, $00, 0
	map_attributes MoveDeletersHouse, MOVEDELETERSHOUSE, $00, 0
	map_attributes DayCare, DAY_CARE, $00, 0
	
	map_attributes NewBarkTown, NEW_BARK_TOWN, $05, 0
	
	map_attributes SiteGate, SITEGATE, $00, 0
	
	map_attributes TheSiteInside1F, THESITEINSIDE1F, $00, 0
	map_attributes TheSitePokecenter1F, THESITEPOKECENTER1F, $00, 0
	map_attributes TheSiteMart, THESITEMART, $00, 0
	map_attributes TheSiteGameCorner, THESITEGAMECORNER, $00, 0
	map_attributes TheSiteCafe, THESITECAFE, $00, 0
	map_attributes TheSiteInsideRuinEntrance, THESITEINSIDERUINENTRANCE, $00, 0
	map_attributes TheSiteInsideTeacherHall, THESITEINSIDETEACHERHALL, $00, 0
	map_attributes ApartmentHall, APARTMENT_HALL, $00, 0
	map_attributes Apartments123, APARTMENTS123, $00, 0
	map_attributes Apartments789, APARTMENTS789, $00, 0
	map_attributes WeirdCloset, WEIRDCLOSET, $00, 0
	map_attributes DiggingAcademy, DIGGINGACADEMY, $00, 0
	map_attributes Teacher1, TEACHER1, $00, 0
	map_attributes Teacher2, TEACHER2, $00, 0
	map_attributes Teacher3, TEACHER3, $00, 0
	map_attributes Teacher4, TEACHER4, $00, 0
	map_attributes Teacher5, TEACHER5, $00, 0
	map_attributes Teacher6, TEACHER6, $00, 0
	map_attributes Teacher7, TEACHER7, $00, 0
	map_attributes Teacher8, TEACHER8, $00, 0
	map_attributes BadShed, BADSHED, $00, 0

	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0
	
	map_attributes A1, A1, $00, 0
	map_attributes A2, A2, $00, 0
	map_attributes A3, A3, $00, 0
	map_attributes A4, A4, $00, 0
	map_attributes A5, A5, $00, 0
	map_attributes A6, A6, $00, 0
	map_attributes A7, A7, $00, 0
	map_attributes A8, A8, $00, 0
	map_attributes A9, A9, $00, 0
	map_attributes A10, A10, $00, 0
	map_attributes A11, A11, $00, 0
	map_attributes A12, A12, $00, 0
	map_attributes A13, A13, $00, 0
	map_attributes A14, A14, $00, 0
	map_attributes AHEAL, AHEAL, $00, 0
	map_attributes AMART, AMART, $00, 0
	map_attributes ABOSS, ABOSS, $00, 0
	map_attributes APREBOSS, APREBOSS, $00, 0

	map_attributes B1, B1, $00, 0
	map_attributes B2, B2, $00, 0
	map_attributes B3, B3, $00, 0
	map_attributes B4, B4, $00, 0
	map_attributes B5, B5, $00, 0
	map_attributes B6, B6, $00, 0
	map_attributes B7, B7, $00, 0
	map_attributes B8, B8, $00, 0
	map_attributes B9, B9, $00, 0
	map_attributes B10, B10, $00, 0
	map_attributes B11, B11, $00, 0
	map_attributes B12, B12, $00, 0
	map_attributes B13, B13, $00, 0
	map_attributes B14, B14, $00, 0
	map_attributes BHEAL, BHEAL, $00, 0
	map_attributes BMART, BMART, $00, 0
	map_attributes BBOSS, BBOSS, $00, 0
	map_attributes BPREBOSS, BPREBOSS, $00, 0
	
	map_attributes C1, C1, $00, 0
	map_attributes C2, C2, $00, 0
	map_attributes C3, C3, $00, 0
	map_attributes C4, C4, $00, 0
	map_attributes C5, C5, $00, 0
	map_attributes C6, C6, $00, 0
	map_attributes C7, C7, $00, 0
	map_attributes C8, C8, $00, 0
	map_attributes C9, C9, $00, 0
	map_attributes C10, C10, $00, 0
	map_attributes C11, C11, $00, 0
	map_attributes C12, C12, $00, 0
	map_attributes C13, C13, $00, 0
	map_attributes C14, C14, $00, 0
	map_attributes CHEAL, CHEAL, $00, 0
	map_attributes CMART, CMART, $00, 0
	map_attributes CBOSS, CBOSS, $00, 0
	map_attributes CPREBOSS, CPREBOSS, $00, 0

	map_attributes D1, D1, $00, 0
	map_attributes D2, D2, $00, 0
	map_attributes D3, D3, $00, 0
	map_attributes D4, D4, $00, 0
	map_attributes D5, D5, $00, 0
	map_attributes D6, D6, $00, 0
	map_attributes D7, D7, $00, 0
	map_attributes D8, D8, $00, 0
	map_attributes D9, D9, $00, 0
	map_attributes D10, D10, $00, 0
	map_attributes D11, D11, $00, 0
	map_attributes D12, D12, $00, 0
	map_attributes D13, D13, $00, 0
	map_attributes D14, D14, $00, 0
	map_attributes DHEAL, DHEAL, $00, 0
	map_attributes DMART, DMART, $00, 0
	map_attributes DBOSS, DBOSS, $00, 0
	map_attributes DPREBOSS, DPREBOSS, $00, 0
	
	map_attributes E1, E1, $00, 0
	map_attributes E2, E2, $00, 0
	map_attributes E3, E3, $00, 0
	map_attributes E4, E4, $00, 0
	map_attributes E5, E5, $00, 0
	map_attributes E6, E6, $00, 0
	map_attributes E7, E7, $00, 0
	map_attributes E8, E8, $00, 0
	map_attributes E9, E9, $00, 0
	map_attributes E10, E10, $00, 0
	map_attributes E11, E11, $00, 0
	map_attributes E12, E12, $00, 0
	map_attributes E13, E13, $00, 0
	map_attributes E14, E14, $00, 0
	map_attributes EHEAL, EHEAL, $00, 0
	map_attributes EMART, EMART, $00, 0
	map_attributes EBOSS, EBOSS, $00, 0
	map_attributes EPREBOSS, EPREBOSS, $00, 0

	map_attributes F1, F1, $00, 0
	map_attributes F2, F2, $00, 0
	map_attributes F3, F3, $00, 0
	map_attributes F4, F4, $00, 0
	map_attributes F5, F5, $00, 0
	map_attributes F6, F6, $00, 0
	map_attributes F7, F7, $00, 0
	map_attributes F8, F8, $00, 0
	map_attributes F9, F9, $00, 0
	map_attributes F10, F10, $00, 0
	map_attributes F11, F11, $00, 0
	map_attributes F12, F12, $00, 0
	map_attributes F13, F13, $00, 0
	map_attributes F14, F14, $00, 0
	map_attributes FHEAL, FHEAL, $00, 0
	map_attributes FMART, FMART, $00, 0
	map_attributes FBOSS, FBOSS, $00, 0
	map_attributes FPREBOSS, FPREBOSS, $00, 0
	
	map_attributes LegendTower1F, LEGENDTOWER1F, $00, 0
	map_attributes LegendTower2F, LEGENDTOWER2F, $00, 0
	map_attributes LegendTower3F, LEGENDTOWER3F, $00, 0
	map_attributes LegendTower4F, LEGENDTOWER4F, $00, 0
	map_attributes LegendTower5F, LEGENDTOWER5F, $00, 0
	