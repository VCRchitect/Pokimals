TrainerPalettes:
; entries correspond to trainer classes

; Each .gbcpal is generated from the corresponding .png, and
; only the middle two colors are included, not black or white.

	table_width PAL_COLOR_SIZE * 2, TrainerPalettes

PlayerPalette: ; Chris uses the same colors as Cal
INCLUDE "gfx/player/chris.pal"
INCBIN "gfx/trainers/big_bird.gbcpal", middle_colors
INCBIN "gfx/trainers/lara.gbcpal", middle_colors
INCBIN "gfx/trainers/tpain.gbcpal", middle_colors
INCBIN "gfx/trainers/jason.gbcpal", middle_colors
INCBIN "gfx/trainers/lincoln.gbcpal", middle_colors
INCBIN "gfx/trainers/arnold.gbcpal", middle_colors
INCBIN "gfx/trainers/jose.gbcpal", middle_colors
INCBIN "gfx/trainers/peely.gbcpal", middle_colors
INCBIN "gfx/trainers/rival1.gbcpal", middle_colors
INCBIN "gfx/trainers/oak.gbcpal", middle_colors
INCBIN "gfx/trainers/will.gbcpal", middle_colors
INCBIN "gfx/trainers/cal.gbcpal", middle_colors
INCBIN "gfx/trainers/bruno.gbcpal", middle_colors
INCBIN "gfx/trainers/karen.gbcpal", middle_colors
INCBIN "gfx/trainers/koga.gbcpal", middle_colors
INCBIN "gfx/trainers/champion.gbcpal", middle_colors
INCBIN "gfx/trainers/brock.gbcpal", middle_colors
INCBIN "gfx/trainers/jose.gbcpal", middle_colors
INCBIN "gfx/trainers/lt_surge.gbcpal", middle_colors
INCBIN "gfx/trainers/scientist.gbcpal", middle_colors
INCBIN "gfx/trainers/erika.gbcpal", middle_colors
INCBIN "gfx/trainers/youngster.gbcpal", middle_colors
INCBIN "gfx/trainers/schoolboy.gbcpal", middle_colors
INCBIN "gfx/trainers/bird_keeper.gbcpal", middle_colors													   
INCBIN "gfx/trainers/lass.gbcpal", middle_colors
INCBIN "gfx/trainers/janine.gbcpal", middle_colors
INCBIN "gfx/trainers/cooltrainer_m.gbcpal", middle_colors
INCBIN "gfx/trainers/cooltrainer_f.gbcpal", middle_colors
INCBIN "gfx/trainers/beauty.gbcpal", middle_colors
INCBIN "gfx/trainers/pokemaniac.gbcpal", middle_colors
INCBIN "gfx/trainers/grunt_m.gbcpal", middle_colors
INCBIN "gfx/trainers/gentleman.gbcpal", middle_colors
INCBIN "gfx/trainers/skier.gbcpal", middle_colors
INCBIN "gfx/trainers/teacher.gbcpal", middle_colors
INCBIN "gfx/trainers/sabrina.gbcpal", middle_colors
INCBIN "gfx/trainers/bug_catcher.gbcpal", middle_colors
INCBIN "gfx/trainers/fisher.gbcpal", middle_colors
INCBIN "gfx/trainers/swimmer_m.gbcpal", middle_colors
INCBIN "gfx/trainers/swimmer_f.gbcpal", middle_colors
INCBIN "gfx/trainers/sailor.gbcpal", middle_colors
INCBIN "gfx/trainers/super_nerd.gbcpal", middle_colors
INCBIN "gfx/trainers/rival2.gbcpal", middle_colors
INCBIN "gfx/trainers/guitarist.gbcpal", middle_colors
INCBIN "gfx/trainers/hiker.gbcpal", middle_colors
INCBIN "gfx/trainers/biker.gbcpal", middle_colors
INCBIN "gfx/trainers/blaine.gbcpal", middle_colors
INCBIN "gfx/trainers/burglar.gbcpal", middle_colors
INCBIN "gfx/trainers/firebreather.gbcpal", middle_colors
INCBIN "gfx/trainers/juggler.gbcpal", middle_colors
INCBIN "gfx/trainers/blackbelt_t.gbcpal", middle_colors
INCBIN "gfx/trainers/executive_m.gbcpal", middle_colors
INCBIN "gfx/trainers/psychic_t.gbcpal", middle_colors
INCBIN "gfx/trainers/picnicker.gbcpal", middle_colors
INCBIN "gfx/trainers/camper.gbcpal", middle_colors
INCBIN "gfx/trainers/executive_f.gbcpal", middle_colors
INCBIN "gfx/trainers/sage.gbcpal", middle_colors
INCBIN "gfx/trainers/medium.gbcpal", middle_colors
INCBIN "gfx/trainers/boarder.gbcpal", middle_colors
INCBIN "gfx/trainers/pokefan_m.gbcpal", middle_colors
INCBIN "gfx/trainers/kimono_girl.gbcpal", middle_colors
INCBIN "gfx/trainers/twins.gbcpal", middle_colors
INCBIN "gfx/trainers/pokefan_f.gbcpal", middle_colors
INCBIN "gfx/trainers/red.gbcpal", middle_colors
INCBIN "gfx/trainers/geist.gbcpal", middle_colors
INCBIN "gfx/trainers/officer.gbcpal", middle_colors
INCBIN "gfx/trainers/grunt_f.gbcpal", middle_colors
INCBIN "gfx/trainers/mysticalman.gbcpal", middle_colors
INCBIN "gfx/trainers/oldman.gbcpal", middle_colors
INCBIN "gfx/trainers/mom.gbcpal", middle_colors
INCBIN "gfx/trainers/elm.gbcpal", middle_colors
INCBIN "gfx/trainers/nurselady.gbcpal", middle_colors
INCBIN "gfx/trainers/bill_t.gbcpal", middle_colors
INCBIN "gfx/trainers/kurt.gbcpal", middle_colors
INCBIN "gfx/trainers/guide.gbcpal", middle_colors
INCBIN "gfx/trainers/papa.gbcpal", middle_colors
KrisPalette:
INCLUDE "gfx/player/kris.pal"
DrakePalette: ; Drake shares Jason's palette
INCLUDE "gfx/player/drake.pal"
	assert_table_length NUM_TRAINER_CLASSES + 3