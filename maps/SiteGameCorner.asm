THESITEGAMECORNER_MOON_STONE_COINS EQU 1500
THESITEGAMECORNER_FIRE_STONE_COINS EQU 1500
THESITEGAMECORNER_THUNDERSTONE_COINS EQU 1500
THESITEGAMECORNER_WATER_STONE_COINS EQU 1500
THESITEGAMECORNER_LEAF_STONE_COINS EQU 1500
THESITEGAMECORNER_SUN_STONE_COINS EQU 1500

THESITEGAMECORNER_BAG_LADY_COINS      EQU 100
THESITEGAMECORNER_CAVE_MAN_COINS    EQU 800
THESITEGAMECORNER_ROLYPOLY_COINS EQU 1500
THESITEGAMECORNER_MASTER_BALL_COINS EQU 9999

	object_const_def
	const THESITEGAMECORNER_CLERK
	const THESITEGAMECORNER_RECEPTIONIST1
	const THESITEGAMECORNER_RECEPTIONIST2
	const THESITEGAMECORNER_PHARMACIST1
	const THESITEGAMECORNER_PHARMACIST2
	const THESITEGAMECORNER_POKEFAN_M1
	const THESITEGAMECORNER_COOLTRAINER_M
	const THESITEGAMECORNER_POKEFAN_F
	const THESITEGAMECORNER_COOLTRAINER_F
	const THESITEGAMECORNER_GENTLEMAN
	const THESITEGAMECORNER_POKEFAN_M2
	const THESITEGAMECORNER_MOVETUTOR
	const THESITEGAMECORNER_POKE_BALL


TheSiteGameCorner_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .MoveTutor

.MoveTutor:
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .finish
	checkitem COIN_CASE
	iffalse .move_tutor_inside
	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, .move_tutor_outside
	ifequal SATURDAY, .move_tutor_outside
.move_tutor_inside
	appear THESITEGAMECORNER_MOVETUTOR
	endcallback

.move_tutor_outside
	checkflag ENGINE_DAILY_MOVE_TUTOR
	iftrue .finish
	disappear THESITEGAMECORNER_MOVETUTOR
.finish
	endcallback


TheSiteGameCornerCoinCase:
	itemball COIN_CASE
	

MoveTutorInsideScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	writetext MoveTutorInsideText
	waitbutton
	closetrainpic
	closetext
	turnobject THESITEGAMECORNER_MOVETUTOR, RIGHT
	end

GoldenrodGameCornerCoinVendorScript:
	jumpstd GameCornerCoinVendorScript

TheSiteGameCornerTMVendorScript:
	faceplayer
	opentext
	writetext TheSiteGameCornerPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse TheSiteGameCornerPrizeVendor_NoCoinCaseScript
	writetext TheSiteGameCornerPrizeVendorWhichPrizeText
TheSiteGameCornerTMVendor_LoopScript:
	special DisplayCoinCaseBalance
	loadmenu TheSiteGameCornerTMVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .MoonStone
	ifequal 2, .FireStone
	ifequal 3, .ThunderStone

	sjump TheSiteGameCornerPrizeVendor_CancelPurchaseScript

.MoonStone:
	checkcoins THESITEGAMECORNER_MOON_STONE_COINS
	ifequal HAVE_LESS, TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, MOON_STONE
	scall TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse TheSiteGameCornerPrizeVendor_CancelPurchaseScript
	giveitem MOON_STONE
	iffalse TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins THESITEGAMECORNER_MOON_STONE_COINS
	sjump TheSiteGameCornerTMVendor_FinishScript

.FireStone:
	checkcoins THESITEGAMECORNER_FIRE_STONE_COINS
	ifequal HAVE_LESS, TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, FIRE_STONE
	scall TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse TheSiteGameCornerPrizeVendor_CancelPurchaseScript
	giveitem FIRE_STONE
	iffalse TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins THESITEGAMECORNER_FIRE_STONE_COINS
	sjump TheSiteGameCornerTMVendor_FinishScript

.ThunderStone:
	checkcoins THESITEGAMECORNER_THUNDERSTONE_COINS
	ifequal HAVE_LESS, TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, THUNDERSTONE
	scall TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse TheSiteGameCornerPrizeVendor_CancelPurchaseScript
	giveitem THUNDERSTONE
	iffalse TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins THESITEGAMECORNER_THUNDERSTONE_COINS
	sjump TheSiteGameCornerTMVendor_FinishScript


TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript:
	writetext TheSiteGameCornerPrizeVendorConfirmPrizeText
	yesorno
	end

TheSiteGameCornerTMVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext TheSiteGameCornerPrizeVendorHereYouGoText
	waitbutton
	sjump TheSiteGameCornerTMVendor_LoopScript

TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript:
	writetext TheSiteGameCornerPrizeVendorNeedMoreCoinsText
	waitbutton
	closetext
	end

TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript:
	writetext TheSiteGameCornerPrizeVendorNoMoreRoomText
	waitbutton
	closetext
	end

TheSiteGameCornerPrizeVendor_CancelPurchaseScript:
	writetext TheSiteGameCornerPrizeVendorQuitText
	waitbutton
	closetext
	end

TheSiteGameCornerPrizeVendor_NoCoinCaseScript:
	writetext TheSiteGameCornerPrizeVendorNoCoinCaseText
	waitbutton
	closetext
	end

TheSiteGameCornerTMVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "MOON STONE   1500@"
	db "FIRE STONE   1500@"
	db "THUNDERSTONE 1500@"
	db "CANCEL@"

TheSiteGameCornerPrizeMonVendorScript:
	faceplayer
	opentext
	writetext TheSiteGameCornerPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse TheSiteGameCornerPrizeVendor_NoCoinCaseScript
.loop
	writetext TheSiteGameCornerPrizeVendorWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WaterStone
	ifequal 2, .LeafStone
	ifequal 3, .SunStone
	ifequal 4, .MasterBall
	sjump TheSiteGameCornerPrizeVendor_CancelPurchaseScript

.WaterStone:
	checkcoins THESITEGAMECORNER_WATER_STONE_COINS
	ifequal HAVE_LESS, TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, WATER_STONE
	scall TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse TheSiteGameCornerPrizeVendor_CancelPurchaseScript
	giveitem WATER_STONE
	iffalse TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins THESITEGAMECORNER_WATER_STONE_COINS
	sjump .loop

.LeafStone:
	checkcoins THESITEGAMECORNER_LEAF_STONE_COINS
	ifequal HAVE_LESS, TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, LEAF_STONE
	scall TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse TheSiteGameCornerPrizeVendor_CancelPurchaseScript
	giveitem LEAF_STONE
	iffalse TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins THESITEGAMECORNER_LEAF_STONE_COINS
	sjump .loop

.SunStone:
	checkcoins THESITEGAMECORNER_SUN_STONE_COINS
	ifequal HAVE_LESS, TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, SUN_STONE
	scall TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse TheSiteGameCornerPrizeVendor_CancelPurchaseScript
	giveitem SUN_STONE
	iffalse TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins THESITEGAMECORNER_SUN_STONE_COINS
	sjump .loop

.MasterBall:
	checkcoins THESITEGAMECORNER_MASTER_BALL_COINS
	ifequal HAVE_LESS, TheSiteGameCornerPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, MASTER_BALL
	scall TheSiteGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse TheSiteGameCornerPrizeVendor_CancelPurchaseScript
	giveitem MASTER_BALL
	iffalse TheSiteGameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins THESITEGAMECORNER_MASTER_BALL_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "WATER STONE 1500@"
	db "LEAF STONE  1500@"
	db "SUN STONE   1500@"
	db "MASTER BALL 9999@"
	db "CANCEL@"

TheSiteGameCornerPharmacistScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GUIDE
	writetext TheSiteGameCornerPharmacistText
	waitbutton
	closetrainpic
	closetext
	turnobject LAST_TALKED, LEFT
	end

TheSiteGameCornerPokefanM1Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	writetext TheSiteGameCornerPokefanM1Text
	waitbutton
	closetrainpic
	closetext
	turnobject THESITEGAMECORNER_POKEFAN_M1, RIGHT
	end

TheSiteGameCornerCooltrainerMScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERM
	writetext TheSiteGameCornerCooltrainerMText
	waitbutton
	closetrainpic
	closetext
	turnobject THESITEGAMECORNER_COOLTRAINER_M, LEFT
	end

TheSiteGameCornerPokefanFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANF
	writetext TheSiteGameCornerPokefanFText
	waitbutton
	closetrainpic
	closetext
	turnobject THESITEGAMECORNER_POKEFAN_F, RIGHT
	end

TheSiteGameCornerCooltrainerFScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic COOLTRAINERF
	randomtext NPCTextTable
	waitbutton
	closetrainpic
	closetext
	end
	
TheSiteGameCornerGentlemanScript:
	faceplayer
	refreshscreen
	opentext
	trainerpic GENTLEMAN
	writetext TheSiteGameCornerGentlemanText
	waitbutton
	closetrainpic
	closetext
	turnobject THESITEGAMECORNER_GENTLEMAN, RIGHT
	end

TheSiteGameCornerPokefanM2Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic POKEFANM
	writetext CoinCaseText
	waitbutton
	closetrainpic
	closetext
	end
	
TheSiteGameCornerLeftTheirDrinkScript:
	jumptext TheSiteGameCornerLeftTheirDrinkText

TheSiteGameCornerSlotsMachineScript:
	random 6
	ifequal 0, TheSiteGameCornerLuckySlotsMachineScript
	refreshscreen
	setval FALSE
	special SlotMachine
	closetext
	end

TheSiteGameCornerLuckySlotsMachineScript:
	refreshscreen
	setval TRUE
	special SlotMachine
	closetext
	end

TheSiteGameCornerCardFlipMachineScript:
	refreshscreen
	special CardFlip
	closetext
	end

TheSiteGameCornerPrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done

TheSiteGameCornerPrizeVendorWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

TheSiteGameCornerPrizeVendorConfirmPrizeText:
	text_ram wStringBuffer3
	text "..."
	line "Is that right?"
	done

TheSiteGameCornerPrizeVendorHereYouGoText:
	text "Here you go!"
	done

TheSiteGameCornerPrizeVendorNeedMoreCoinsText:
	text "Sorry! You need"
	line "more coins."
	done

TheSiteGameCornerPrizeVendorNoMoreRoomText:
	text "Sorry. You can't"
	line "carry any more."
	done

TheSiteGameCornerPrizeVendorQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

TheSiteGameCornerPrizeVendorNoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

TheSiteGameCornerPharmacistText:
if DEF(_CRYSTAL_AU)
	text "This machine looks"
	line "the same as the"
	cont "others."
	done
else
	text "I always play this"
	line "slot machine. It"

	para "pays out more than"
	line "others, I think."
	done
endc

TheSiteGameCornerPokefanM1Text:
if DEF(_CRYSTAL_AU)
	text "These machines"
	line "seem different"

	para "from the ones at"
	line "CELADON CITY!"
	done
else
	text "I just love this"
	line "new slot machine."

	para "It's more of a"
	line "challenge than the"
	cont "ones in CELADON."
	done
endc

TheSiteGameCornerCooltrainerMText:
if DEF(_CRYSTAL_AU)
	text "Nothing is certain"
	line "in this area."
	done
else
	text "Life is a gamble."
	line "I'm going to flip"
	cont "cards till I drop!"
	done
endc

TheSiteGameCornerPokefanFText:
	text "Card flip..."

if DEF(_CRYSTAL_AU)
	para "Different from the"
	line "other machines."
	done
else
	para "I prefer it over"
	line "the slots because"

	para "it's easier to"
	line "figure the odds."

	para "But the payout is"
	line "much lower."
	done
endc

TheSiteGameCornerCooltrainerFText:
	text "I won't quit until"
	line "I win!"
	done

TheSiteGameCornerGentlemanText:
	text "I taught BLIZZARD"
	line "to my ANIMAL."

	para "It was hard to get"
	line "enough coins for"

	para "it, but it was"
	line "worth it."
	done

CoinCaseText:
	text "I couldn't win at"
	line "the slots, and I"

	para "blew it on card"
	line "flipping..."

	para "I got so furious,"
	line "I tossed out my"

	para "COIN CASE about 3"
	line "steps away."
	done

MoveTutorInsideText:
	text "Wahahah! The coins"
	line "keep rolling in!"
	done

TheSiteGameCornerLeftTheirDrinkText:
	text "Someone left their"
	line "drink."

	para "It smells sweet."
	done

TheSiteGameCorner_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, THESITEINSIDE1F, 3
	warp_event  3, 13, THESITEINSIDE1F, 3

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  6,  8, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  6, 11, BGEVENT_RIGHT, TheSiteGameCornerSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, TheSiteGameCornerLuckySlotsMachineScript
	bg_event  7,  8, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, TheSiteGameCornerSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event 12,  7, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event 12,  8, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event 12,  9, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event 12, 10, BGEVENT_READ, TheSiteGameCornerSlotsMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, TheSiteGameCornerSlotsMachineScript
	bg_event 13,  6, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 13,  7, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 13,  8, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 13,  9, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 13, 10, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 13, 11, BGEVENT_LEFT, TheSiteGameCornerCardFlipMachineScript
	bg_event 18,  6, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 18,  7, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 18,  8, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 18,  9, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 18, 10, BGEVENT_READ, TheSiteGameCornerCardFlipMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, TheSiteGameCornerCardFlipMachineScript
	bg_event 12,  1, BGEVENT_LEFT, TheSiteGameCornerLeftTheirDrinkScript

	def_object_events
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCoinVendorScript, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerTMVendorScript, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerPrizeMonVendorScript, -1
	object_event  8,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerPharmacistScript, -1
	object_event  8,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, NITE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerPharmacistScript, -1
	object_event 11, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerPokefanM1Script, -1
	object_event 14,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerCooltrainerMScript, -1
	object_event 17,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerPokefanFScript, -1
	object_event 10,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerCooltrainerFScript, -1
	object_event  5, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerGentlemanScript, -1
	object_event 11, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TheSiteGameCornerPokefanM2Script, -1
	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MoveTutorInsideScript, EVENT_GOLDENROD_GAME_CORNER_MOVE_TUTOR
	object_event  7, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheSiteGameCornerCoinCase, EVENT_GOLDENROD_UNDERGROUND_COIN_CASE
