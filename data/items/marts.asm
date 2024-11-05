Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	dw MartRuinA
	dw MartSiteHoldBase
	dw MartSiteHold1
	dw MartSiteHold2
	dw MartSiteHold3
	dw MartSiteHold4
	dw MartSiteHold5
	dw MartSiteHold6
	dw MartSiteHold7
	dw MartSiteHold8
	dw MartSiteTMBase
	dw MartSiteTM1
	dw MartSiteTM2
	dw MartSiteTM3
	dw MartSiteTM4
	dw MartSiteTM5
	dw MartSiteTM6
	dw MartSiteTM7
	dw MartSiteTM8
	dw MartSiteTMBase2
	dw MartSiteTM12
	dw MartSiteTM22
	dw MartSiteTM32
	dw MartSiteTM42
	dw MartSiteTM52
	dw MartSiteTM62
	dw MartSiteTM72
	dw MartSiteTM82
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 5 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db CIGARETTE
	db -1 ; end

MartCherrygroveDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db PARLYZ_HEAL
	db AWAKENING
	db CIGARETTE
	db -1 ; end

MartViolet:
	db 11 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db CIGARETTE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db RECYCLA_BALL
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 10 ; # items
	db CHARCOAL
	db CIGARETTE	
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 6 ; # items
	db POTION
	db CIGARETTE	
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartGoldenrod4F:
	db 5 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db -1 ; end

MartGoldenrod5F1:
	db 3 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db -1 ; end

MartGoldenrod5F2:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db -1 ; end

MartGoldenrod5F3:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_ROCK_SMASH
	db -1 ; end

MartGoldenrod5F4:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db -1 ; end

MartOlivine:
	db 10 ; # items
	db GREAT_BALL
	db CIGARETTE	
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 11 ; # items
	db POKE_BALL
	db GREAT_BALL
	db CIGARETTE	
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartMahogany1:
	db 5 ; # items
	db CIGARETTE
	db TINYMUSHROOM
	db BEAVERTAIL
	db POKE_BALL
	db POTION
	db -1 ; end

MartMahogany2:
	db 10 ; # items
	db RAGECANDYBAR
	db CIGARETTE	
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db SUPER_REPEL
	db REVIVE
	db FLOWER_MAIL
	db -1 ; end

MartBlackthorn:
	db 10 ; # items
	db GREAT_BALL
	db CIGARETTE	
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_ATTACK
	db -1 ; end

MartViridian:
	db 10 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FLOWER_MAIL
	db CIGARETTE	
	db -1 ; end

MartPewter:
	db 8 ; # items
	db GREAT_BALL
	db CIGARETTE	
	db SUPER_POTION
	db SUPER_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartCerulean:
	db 10 ; # items
	db GREAT_BALL
	db CIGARETTE	
	db ULTRA_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db FULL_HEAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db SURF_MAIL
	db -1 ; end

MartLavender:
	db 9 ; # items
	db GREAT_BALL
	db POTION	
	db CIGARETTE
	db SUPER_POTION
	db MAX_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartVermilion:
	db 9 ; # items
	db ULTRA_BALL
	db CIGARETTE	
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db LITEBLUEMAIL
	db -1 ; end

MartCeladon2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartCeladon2F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon3F:
	db 5 ; # items
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_SANDSTORM
	db -1 ; end

MartCeladon4F:
	db 3 ; # items
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db -1 ; end

MartCeladon5F1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartCeladon5F2:
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartFuchsia:
	db 8 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db CIGARETTE	
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartSaffron:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db X_ATTACK
	db X_DEFEND
	db FLOWER_MAIL
	db CIGARETTE	
	db -1 ; end

MartMtMoon:
	db 7 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db CIGARETTE	
	db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau:
	db 8 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db CIGARETTE	
	db REVIVE
	db FULL_HEAL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartRuinA:
	db 5 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BERRY
	db -1 ; end


MartSiteHoldBase:
	db 4
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end

MartSiteHold1:
	db 5
	db SHARP_BEAK
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end
	
MartSiteHold2:
	db 7
	db POISON_BARB
	db KINGS_ROCK
	db SHARP_BEAK
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end
	
MartSiteHold3:
	db 9
	db SILVERPOWDER
	db MYSTIC_WATER
	db POISON_BARB
	db KINGS_ROCK
	db SHARP_BEAK
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end
	
MartSiteHold4:
	db 12
	db TWISTEDSPOON
	db BLACKBELT_I
	db BLACKGLASSES
	db SILVERPOWDER
	db MYSTIC_WATER
	db POISON_BARB
	db KINGS_ROCK
	db SHARP_BEAK
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end

MartSiteHold5:	
	db 15
	db PINK_BOW
	db NEVERMELTICE
	db POLEMAGNET
	db TWISTEDSPOON
	db BLACKBELT_I
	db BLACKGLASSES
	db SILVERPOWDER
	db MYSTIC_WATER
	db POISON_BARB
	db KINGS_ROCK
	db SHARP_BEAK
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end

MartSiteHold6:	
	db 18
	db SPELL_TAG
	db MIRACLE_SEED
	db FOCUS_BAND
	db PINK_BOW
	db NEVERMELTICE
	db POLEMAGNET
	db TWISTEDSPOON
	db BLACKBELT_I
	db BLACKGLASSES
	db SILVERPOWDER
	db MYSTIC_WATER
	db POISON_BARB
	db KINGS_ROCK
	db SHARP_BEAK
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end

MartSiteHold7:
	db 21
	db HARD_STONE
	db CHARCOAL
	db SCOPE_LENS
	db SPELL_TAG
	db MIRACLE_SEED
	db FOCUS_BAND
	db PINK_BOW
	db NEVERMELTICE
	db POLEMAGNET
	db TWISTEDSPOON
	db BLACKBELT_I
	db BLACKGLASSES
	db SILVERPOWDER
	db MYSTIC_WATER
	db POISON_BARB
	db KINGS_ROCK
	db SHARP_BEAK
	db QUICK_CLAW
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end

MartSiteHold8:	
	db 26
	db METAL_COAT
	db DRAGON_SCALE
	db LEFTOVERS
	db POLKADOT_BOW
	db HARD_STONE
	db CHARCOAL
	db SCOPE_LENS
	db SPELL_TAG
	db MIRACLE_SEED
	db FOCUS_BAND
	db PINK_BOW
	db NEVERMELTICE
	db POLEMAGNET
	db TWISTEDSPOON
	db BLACKBELT_I
	db BLACKGLASSES
	db SILVERPOWDER
	db MYSTIC_WATER
	db POISON_BARB
	db KINGS_ROCK
	db SHARP_BEAK
	db QUICK_CLAW
	db PSNCUREBERRY
	db SOFT_SAND
	db CIGARETTE
	db BRIGHTPOWDER
	db -1 ; end


MartSiteTMBase:
	db 2
	db TM_HEADBUTT
	db TM_CURSE
	db -1

MartSiteTMBase2:
	db 2
	db TM_ROLLOUT
	db TM_ROAR
	db -1

MartSiteTM1:
	db 4
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db -1
	
MartSiteTM12:
	db 4
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db -1

MartSiteTM2:
	db 6
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db -1
	
MartSiteTM22:
	db 6
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SNORE
	db -1
	
MartSiteTM3:	
	db 8
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db -1
	
MartSiteTM32:	
	db 8
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SNORE
	db TM_BLIZZARD
	db TM_HYPER_BEAM
	db TM_PROTECT
	db TM_RAIN_DANCE
	db -1
	
MartSiteTM4:
	db 10
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db -1
	
MartSiteTM42:
	db TM_SWEET_SCENT
	db TM_SNORE
	db TM_BLIZZARD
	db TM_HYPER_BEAM
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_GIGA_DRAIN
	db TM_ENDURE
	db TM_FRUSTRATION
	db TM_SOLARBEAM
	db -1
	
MartSiteTM5:	
	db 12
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SNORE
	db -1


MartSiteTM52:	
	db 12
	db TM_BLIZZARD
	db TM_HYPER_BEAM
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_GIGA_DRAIN
	db TM_ENDURE
	db TM_FRUSTRATION
	db TM_SOLARBEAM	
	db TM_THUNDER
	db TM_EARTHQUAKE
	db TM_RETURN
	db TM_DIG
	db -1

MartSiteTM6:
	db 14
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SNORE
	db TM_BLIZZARD
	db TM_HYPER_BEAM
	db -1
	
MartSiteTM62:
	db 14
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_GIGA_DRAIN
	db TM_ENDURE
	db TM_FRUSTRATION
	db TM_SOLARBEAM	
	db TM_THUNDER
	db TM_EARTHQUAKE
	db TM_RETURN
	db TM_DIG
	db TM_PSYCHIC_M
	db TM_DOUBLE_TEAM
	db TM_SWAGGER
	db TM_SLEEP_TALK
	db -1

MartSiteTM7:
	db 16
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SNORE
	db TM_BLIZZARD
	db TM_HYPER_BEAM
	db TM_PROTECT
	db TM_RAIN_DANCE
	db -1	

MartSiteTM72:
	db 16
	db TM_GIGA_DRAIN
	db TM_ENDURE
	db TM_FRUSTRATION
	db TM_SOLARBEAM	
	db TM_THUNDER
	db TM_EARTHQUAKE
	db TM_RETURN
	db TM_DIG
	db TM_PSYCHIC_M
	db TM_DOUBLE_TEAM
	db TM_SWAGGER
	db TM_SLEEP_TALK
	db TM_SLUDGE_BOMB
	db TM_SANDSTORM
	db TM_FIRE_BLAST
	db TM_SWIFT
	db -1

MartSiteTM8:	
	db 20
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SNORE
	db TM_BLIZZARD
	db TM_HYPER_BEAM
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_GIGA_DRAIN
	db TM_ENDURE
	db TM_FRUSTRATION
	db TM_SOLARBEAM	
	db -1

MartSiteTM82:	
	db 20
	db TM_THUNDER
	db TM_EARTHQUAKE
	db TM_RETURN
	db TM_DIG
	db TM_PSYCHIC_M
	db TM_DOUBLE_TEAM
	db TM_SWAGGER
	db TM_SLEEP_TALK
	db TM_SLUDGE_BOMB
	db TM_SANDSTORM
	db TM_FIRE_BLAST
	db TM_SWIFT	
	db TM_DEFENSE_CURL
	db TM_THUNDERPUNCH
	db TM_DREAM_EATER
	db TM_DETECT	
	db TM_THIEF
	db TM_STEEL_WING
	db TM_FIRE_PUNCH
	db TM_NIGHTMARE
	db -1	

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
