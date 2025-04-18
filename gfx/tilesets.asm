INCLUDE "constants.asm"

tilecoll: MACRO
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

Tileset0GFX::
TilesetJohtoGFX::
INCBIN "gfx/tilesets/johto.2bpp.lz"

Tileset0Meta::
TilesetJohtoMeta::
INCBIN "data/tilesets/johto_metatiles.bin"

Tileset0Coll::
TilesetJohtoColl::
INCLUDE "data/tilesets/johto_collision.asm"

TilesetJohtoModernGFX::
TilesetBattleTowerOutsideGFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.lz"

TilesetJohtoModernMeta::
INCBIN "data/tilesets/johto_modern_metatiles.bin"

TilesetJohtoModernColl::
INCLUDE "data/tilesets/johto_modern_collision.asm"

TilesetBattleTowerOutsideMeta::
INCBIN "data/tilesets/battle_tower_outside_metatiles.bin"

TilesetBattleTowerOutsideColl::
INCLUDE "data/tilesets/battle_tower_outside_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetHouseGFX::
INCBIN "gfx/tilesets/house.2bpp.lz"

TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin"

TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"



SECTION "Tileset Data 3", ROMX

TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetLabGFX::
INCBIN "gfx/tilesets/lab.2bpp.lz"

TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin"

TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"

TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"

TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"


SECTION "Tileset Data 4", ROMX

TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin"

TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"

TilesetIcePathGFX::
INCBIN "gfx/tilesets/ice_path.2bpp.lz"

TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"

TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"



SECTION "Tileset Data 5", ROMX

TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetChampionsRoomGFX::
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin"

TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

TilesetLighthouseGFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.lz"

TilesetLighthouseMeta::
INCBIN "data/tilesets/lighthouse_metatiles.bin"

TilesetLighthouseColl::
INCLUDE "data/tilesets/lighthouse_collision.asm"



TilesetPlayersRoomGFX::
INCBIN "gfx/tilesets/players_room.2bpp.lz"

TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin"

TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"

TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"

TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"

TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"




SECTION "Tileset Data 6", ROMX
TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"

TilesetCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"

TilesetCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"

TilesetRuinCaveMeta::
INCBIN "data/tilesets/ruin_cave_metatiles.bin"

TilesetRuinCaveGFX::
INCBIN "gfx/tilesets/ruin_cave.2bpp.lz"

TilesetRuinCaveColl::
INCLUDE "data/tilesets/ruin_cave_collision.asm"

TilesetForestRuinMeta::
INCBIN "data/tilesets/forestruin_metatiles.bin"

TilesetForestRuinGFX::
INCBIN "gfx/tilesets/forestruin.2bpp.lz"

TilesetForestRuinColl::
INCLUDE "data/tilesets/forestruin_collision.asm"





SECTION "Tileset Data 7", ROMX

TilesetFireRuinMeta::
INCBIN "data/tilesets/fireruin_metatiles.bin"

TilesetFireRuinGFX::
INCBIN "gfx/tilesets/fireruin.2bpp.lz"

TilesetFireRuinColl::
INCLUDE "data/tilesets/fireruin_collision.asm"

TilesetIceRuinMeta::
INCBIN "data/tilesets/iceruin_metatiles.bin"

TilesetIceRuinGFX::
INCBIN "gfx/tilesets/iceruin.2bpp.lz"

TilesetIceRuinColl::
INCLUDE "data/tilesets/iceruin_collision.asm"



SECTION "Tileset Data 8", ROMX

TilesetElectricRuinMeta::
INCBIN "data/tilesets/electricruin_metatiles.bin"

TilesetElectricRuinGFX::
INCBIN "gfx/tilesets/electricruin.2bpp.lz"

TilesetElectricRuinColl::
INCLUDE "data/tilesets/electricruin_collision.asm"

TilesetRuinGoldMeta::
INCBIN "data/tilesets/ruin_gold_metatiles.bin"

TilesetRuinGoldGFX::
INCBIN "gfx/tilesets/ruin_gold.2bpp.lz"

TilesetRuinGoldColl::
INCLUDE "data/tilesets/ruin_gold_collision.asm"

TilesetTheSiteGFX::
INCBIN "gfx/tilesets/thesite.2bpp.lz"

TilesetTheSiteMeta::
INCBIN "data/tilesets/thesite_metatiles.bin"

TilesetTheSiteColl::
INCLUDE "data/tilesets/thesite_collision.asm"
