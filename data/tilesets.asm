tileset: MACRO
	dba \1GFX, \1Meta, \1Coll
	dw \1Anim
	dw NULL
	dw \1PalMap
ENDM

; Associated data:
; - The *GFX, *Meta, and *Coll are defined in gfx/tilesets.asm
; - The *PalMap are defined in gfx/tileset_palette_maps.asm
; - The *Anim are defined in engine/tilesets/tileset_anims.asm

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH, Tilesets
	tileset Tileset0	
	tileset TilesetJohto
	tileset TilesetJohtoModern
	tileset TilesetBattleTowerOutside	
	tileset TilesetHouse
	tileset TilesetPlayersHouse
	tileset TilesetPokecenter
	tileset TilesetGate
	tileset TilesetLab	
	tileset TilesetFacility
	tileset TilesetMart
	tileset TilesetIcePath
	tileset TilesetGameCorner
	tileset TilesetEliteFourRoom
	tileset TilesetChampionsRoom
	tileset TilesetLighthouse
	tileset TilesetPlayersRoom
	tileset TilesetTower
	tileset TilesetCave
	tileset TilesetRuinCave
	tileset TilesetForestRuin
	tileset TilesetFireRuin
	tileset TilesetIceRuin
	tileset TilesetElectricRuin
	tileset TilesetRuinGold
	tileset TilesetTheSite
	assert_table_length NUM_TILESETS + 1
	