tilepal: MACRO
; used in gfx/tilesets/*_palette_map.asm
; vram bank, pals
x = \1 << OAM_TILE_BANK
rept (_NARG - 1) / 2
	dn (x | PAL_BG_\3), (x | PAL_BG_\2)
	shift 2
endr
ENDM

Tileset0PalMap:
TilesetJohtoPalMap:
INCLUDE "gfx/tilesets/johto_palette_map.asm"

TilesetJohtoModernPalMap:
INCLUDE "gfx/tilesets/johto_modern_palette_map.asm"

TilesetBattleTowerOutsidePalMap:
INCLUDE "gfx/tilesets/battle_tower_outside_palette_map.asm"

TilesetHousePalMap:
INCLUDE "gfx/tilesets/house_palette_map.asm"

TilesetPlayersHousePalMap:
INCLUDE "gfx/tilesets/players_house_palette_map.asm"

TilesetLabPalMap:
INCLUDE "gfx/tilesets/lab_palette_map.asm"

TilesetPokecenterPalMap:
INCLUDE "gfx/tilesets/pokecenter_palette_map.asm"

TilesetGatePalMap:
INCLUDE "gfx/tilesets/gate_palette_map.asm"

TilesetFacilityPalMap:
INCLUDE "gfx/tilesets/facility_palette_map.asm"

TilesetMartPalMap:
INCLUDE "gfx/tilesets/mart_palette_map.asm"

TilesetGameCornerPalMap:
INCLUDE "gfx/tilesets/game_corner_palette_map.asm"

TilesetEliteFourRoomPalMap:
INCLUDE "gfx/tilesets/elite_four_room_palette_map.asm"

TilesetTowerPalMap:
INCLUDE "gfx/tilesets/tower_palette_map.asm"

TilesetCavePalMap:
INCLUDE "gfx/tilesets/cave_palette_map.asm"

TilesetIcePathPalMap:
INCLUDE "gfx/tilesets/ice_path_palette_map.asm"

TilesetChampionsRoomPalMap:
INCLUDE "gfx/tilesets/champions_room_palette_map.asm"

TilesetLighthousePalMap:
INCLUDE "gfx/tilesets/lighthouse_palette_map.asm"

TilesetPlayersRoomPalMap:
INCLUDE "gfx/tilesets/players_room_palette_map.asm"

TilesetRuinCavePalMap:
INCLUDE "gfx/tilesets/ruin_cave_palette_map.asm"

TilesetForestRuinPalMap:
INCLUDE "gfx/tilesets/forestruin_palette_map.asm"

TilesetFireRuinPalMap:
INCLUDE "gfx/tilesets/fireruin_palette_map.asm"

TilesetIceRuinPalMap:
INCLUDE "gfx/tilesets/iceruin_palette_map.asm"

TilesetElectricRuinPalMap:
INCLUDE "gfx/tilesets/electricruin_palette_map.asm"

TilesetRuinGoldPalMap:
INCLUDE "gfx/tilesets/ruin_gold_palette_map.asm"

TilesetTheSitePalMap:
INCLUDE "gfx/tilesets/thesite_palette_map.asm"


MapGroupPalettes: ; unreferenced
; entries correspond to MAPGROUP_* constants
rept NUM_MAP_GROUPS
	db PAL_BG_ROOF
endr
