; Tilesets indexes (see data/tilesets.asm)
	const_def 1
	const TILESET_JOHTO                ; 01
	const TILESET_JOHTO_MODERN         ; 02
	const TILESET_BATTLE_TOWER_OUTSIDE ; 04
	const TILESET_HOUSE                ; 05
	const TILESET_PLAYERS_HOUSE        ; 06
	const TILESET_POKECENTER           ; 07
	const TILESET_GATE                 ; 08
	const TILESET_LAB                  ; 0a
	const TILESET_FACILITY             ; 0b
	const TILESET_MART                 ; 0c
	const TILESET_ICE_PATH             ; 1d	
	const TILESET_GAME_CORNER          ; 0e
	const TILESET_ELITE_FOUR_ROOM      ; 0f
	const TILESET_CHAMPIONS_ROOM       ; 12
	const TILESET_LIGHTHOUSE           ; 13
	const TILESET_PLAYERS_ROOM         ; 14
	const TILESET_POKECOM_CENTER       ; 15
	const TILESET_TOWER                ; 17
	const TILESET_CAVE                 ; 18
	const TILESET_FOREST               ; 1f
	const TILESET_RUIN_CAVE ; 25
	const TILESET_FORESTRUIN
	const TILESET_FIRERUIN
	const TILESET_ICERUIN
	const TILESET_ELECTRICRUIN	
	const TILESET_THESITE ; 26
NUM_TILESETS EQU const_value - 1

; wTileset struct size
TILESET_LENGTH EQU 15

; roof length (see gfx/tilesets/roofs)
ROOF_LENGTH EQU 9

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
