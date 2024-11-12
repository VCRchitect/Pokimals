GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE   EQU 500

	object_const_def
	const APT789_NPC1
	const APT789_NPC2
	const APT789_NPC3
	const KURTSHOUSE_KURT1
	const KURTSHOUSE_TWIN1

Apartments789_MapScripts:
	def_scene_scripts

	def_callbacks

NPCFisherApt7:
	faceplayer
	refreshscreen
	opentext
	trainerpic FISHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCBugCatcherApt7:
	faceplayer
	refreshscreen
	opentext
	trainerpic BUG_CATCHER
	randomtext NPCKTextTable
	waitbutton
	closetrainpic
	closetext
	end

NPCBarberApt7:
	faceplayer
	opentext
	checkflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
	iftrue .AlreadyGotHaircut
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundOlderHaircutBrotherOfferHaircutText
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	writetext GoldenrodUndergroundOlderHaircutBrotherAskWhichMonText
	promptbutton
	special OlderHaircutBrother
	ifequal $0, .Refused
	ifequal $1, .Refused
	setflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
	ifequal $2, .two
	ifequal $3, .three
	sjump .else

.two
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then

.three
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then

.else
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then

.then
	takemoney YOUR_MONEY, GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundOlderHaircutBrotherWatchItBecomeBeautifulText
	waitbutton
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext GoldenrodUndergroundOlderHaircutBrotherAllDoneText
	waitbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue EitherHaircutBrotherScript_SlightlyHappier
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue EitherHaircutBrotherScript_Happier
	sjump EitherHaircutBrotherScript_MuchHappier

.Refused:
	writetext GoldenrodUndergroundOlderHaircutBrotherThatsAShameText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext GoldenrodUndergroundOlderHaircutBrotherYoullNeedMoreMoneyText
	waitbutton
	closetext
	end

.AlreadyGotHaircut:
	writetext GoldenrodUndergroundOlderHaircutBrotherOneHaircutADayText
	waitbutton
	closetext
	end

EitherHaircutBrotherScript_SlightlyHappier:
	writetext HaircutBrosText_SlightlyHappier
	special PlayCurMonCry
	waitbutton
	closetext
	end

EitherHaircutBrotherScript_Happier:
	writetext HaircutBrosText_Happier
	special PlayCurMonCry
	waitbutton
	closetext
	end

EitherHaircutBrotherScript_MuchHappier:
	writetext HaircutBrosText_MuchHappier
	special PlayCurMonCry
	waitbutton
	closetext
	end

Kurt1:
	checkevent EVENT_KURT_GAVE_YOU_LURE_BALL
	iftrue .GotLureBall
	faceplayer
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtHonoredToMakeBallsText
	promptbutton
	closetrainpic
	verbosegiveitem LURE_BALL
	iffalse .NoRoomForBall
	setevent EVENT_KURT_GAVE_YOU_LURE_BALL
.GotLureBall:
	checkevent EVENT_GAVE_KURT_RED_APRICORN
	iftrue .GiveLevelBall
	checkevent EVENT_GAVE_KURT_BLU_APRICORN
	iftrue .GiveLureBall
	checkevent EVENT_GAVE_KURT_YLW_APRICORN
	iftrue .GiveMoonBall
	checkevent EVENT_GAVE_KURT_GRN_APRICORN
	iftrue .GiveFriendBall
	checkevent EVENT_GAVE_KURT_WHT_APRICORN
	iftrue .GiveFastBall
	checkevent EVENT_GAVE_KURT_BLK_APRICORN
	iftrue .GiveHeavyBall
	checkevent EVENT_GAVE_KURT_PNK_APRICORN
	iftrue .GiveLoveBall
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .CheckApricorns
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .CheckApricorns
	refreshscreen
	trainerpic KURT
	writetext KurtsHouseKurtBallsFromApricornsText
	waitbutton
.CheckApricorns:
	checkitem RED_APRICORN
	iftrue .AskApricorn
	checkitem BLU_APRICORN
	iftrue .AskApricorn
	checkitem YLW_APRICORN
	iftrue .AskApricorn
	checkitem GRN_APRICORN
	iftrue .AskApricorn
	checkitem WHT_APRICORN
	iftrue .AskApricorn
	checkitem BLK_APRICORN
	iftrue .AskApricorn
	checkitem PNK_APRICORN
	iftrue .AskApricorn
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .ThatTurnedOutGreat
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .IMakeBallsFromApricorns
	closetext
	end

.IMakeBallsFromApricorns:
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtBallsFromApricornsText
	waitbutton
	closetrainpic
	closetext
	end

.AskApricorn:
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtAskYouHaveAnApricornText
	promptbutton
	closetrainpic
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	refreshscreen
	special SelectApricornForKurt
	ifequal FALSE, .Cancel
	ifequal BLU_APRICORN, .Blu
	ifequal YLW_APRICORN, .Ylw
	ifequal GRN_APRICORN, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal BLK_APRICORN, .Blk
	ifequal PNK_APRICORN, .Pnk
; .Red
	setevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .GaveKurtApricorns

.Blu:
	setevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .GaveKurtApricorns

.Ylw:
	setevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .GaveKurtApricorns

.Grn:
	setevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .GaveKurtApricorns

.Wht:
	setevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .GaveKurtApricorns

.Blk:
	setevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .GaveKurtApricorns

.Pnk:
	setevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .GaveKurtApricorns

.GaveKurtApricorns:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtGetStartedText
	waitbutton
	closetrainpic
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playsound SFX_WARP_TO
	waitsfx
	pause 35
	sjump Kurt1	
	end

.Cancel:
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtThatsALetdownText
	waitbutton
	closetrainpic
	closetext
	end

._ThatTurnedOutGreat:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
.ThatTurnedOutGreat:
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtTurnedOutGreatText
	waitbutton
.NoRoomForBall:
	closetrainpic
	closetext
	end

.GiveLevelBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	closetrainpic
	verbosegiveitemvar LEVEL_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveLureBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	closetrainpic
	verbosegiveitemvar LURE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveMoonBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	closetrainpic
	verbosegiveitemvar MOON_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveFriendBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	refreshscreen
	opentext
	trainerpic KURT
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	closetrainpic
	verbosegiveitemvar FRIEND_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveFastBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	refreshscreen
	opentext
	trainerpic KURT	
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	closetrainpic
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveHeavyBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	refreshscreen
	opentext
	trainerpic KURT	
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	closetrainpic
	verbosegiveitemvar HEAVY_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveLoveBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	refreshscreen
	opentext
	trainerpic KURT	
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	closetrainpic
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump ._ThatTurnedOutGreat

KurtMakingBallsScript:
	checkevent EVENT_BUGGING_KURT_TOO_MUCH
	iffalse Script_FirstTimeBuggingKurt
	opentext
	trainerpic KURT	
	writetext KurtsHouseKurtDontBotherMeText
	waitbutton
	closetrainpic
	closetext
	turnobject KURTSHOUSE_KURT1, UP
	end

Script_FirstTimeBuggingKurt:
	refreshscreen
	trainerpic KURT
	opentext
	writetext KurtsHouseKurtGranddaughterHelpingWorkFasterText
	waitbutton
	closetrainpic
	closetext
	turnobject KURTSHOUSE_KURT1, UP
	setevent EVENT_BUGGING_KURT_TOO_MUCH
	end

KurtsGranddaughter1:
	faceplayer
	refreshscreen
	opentext
	trainerpic PICNICKER
	writetext KurtsGranddaughterDadText
	waitbutton
	closetrainpic
	closetext
	end

Apartments789Trashcan:
	jumpstd TrashCanScript

GoldenrodUndergroundOlderHaircutBrotherOfferHaircutText:
	text "Welcome!"

	para "I run the ANIMAL"
	line "BARBER!"

	para "I'm the best in"
	line "the tri-state area"
	cont "at cutting hair."

	para "I can make your"
	line "ANIMAL stunning"
	cont "for just ¥500."

	para "Would you like me"
	line "to do that?"
	done

GoldenrodUndergroundOlderHaircutBrotherAskWhichMonText:
	text "Which ANIMAL"
	line "should I work on?"
	done

GoldenrodUndergroundOlderHaircutBrotherWatchItBecomeBeautifulText:
	text "OK! Watch it"
	line "become stylish!"
	done

GoldenrodUndergroundOlderHaircutBrotherAllDoneText:
	text "There! All done!"
	done

GoldenrodUndergroundOlderHaircutBrotherThatsAShameText:
	text "Is that right?"
	line "That's a shame!"
	done

GoldenrodUndergroundOlderHaircutBrotherYoullNeedMoreMoneyText:
	text "You'll need more"
	line "money than that."
	done

GoldenrodUndergroundOlderHaircutBrotherOneHaircutADayText:
	text "I do only one"
	line "haircut a day. I'm"
	cont "done for today."
	
	para "Art can be truly"
	line "exhausting, don't"
	cont "you agree?"
	done

HaircutBrosText_SlightlyHappier:
	text_ram wStringBuffer3
	text " looks"
	line "pretty good."
	done

HaircutBrosText_Happier:
	text_ram wStringBuffer3
	text " looks"
	line "stylish as hell."
	done

HaircutBrosText_MuchHappier:
	text_ram wStringBuffer3
	text " looks"
	line "fresh to death!"
	done

KurtsHouseKurtGetStartedText:
	text "Kurt: I'll get"
	line "started right now!"
	done

KurtsHouseKurtHonoredToMakeBallsText:
	text "KURT: Hi, <PLAYER>!"

	para "I like your style!"

	para "I would be honored"
	line "to make BALLS for"

	para "a trainer like"
	line "you."

	para "This is all I have"
	line "now, but take it."
	done

KurtsHouseKurtBallsFromApricornsText:
	text "KURT: I make BALLS"
	line "from APRICORNS."

	para "Collect them from"
	line "trees and bring"
	cont "'em to me."

	para "I'll make BALLS"
	line "out of them."
	done

KurtsHouseKurtAskYouHaveAnApricornText:
	text "KURT: You have an"
	line "APRICORN for me?"

	para "Fine! I'll turn it"
	line "into a BALL."
	done

KurtsHouseKurtThatsALetdownText:
	text "KURT: Oh..."
	line "That's a letdown."
	done

KurtsHouseKurtDontBotherMeText:
	text "KURT: I'm working!"
	line "Don't bother me!"
	done

KurtsHouseKurtJustFinishedYourBallText:
	text "KURT: Ah, <PLAYER>!"
	line "I just finished"
	cont "your BALL. Here!"
	done

KurtsHouseKurtTurnedOutGreatText:
	text "KURT: That turned"
	line "out great."

	para "Try catching"
	line "ANIMALs with it."
	done

KurtsHouseKurtGranddaughterHelpingWorkFasterText:
	text "KURT: Now that my"
	line "granddaughter is"

	para "helping me, I can"
	line "work much faster."
	done

KurtsGranddaughterDadText:
	text "Dad works at SILPH"
	line "where he studies"
	cont "ANML BALLS."
	
	para "Mama says he is a"
	line "'real slut for"
	cont "BALLS.'"

	para "I have to stay"
	line "home with Grandpa"
	cont "because of it."
	done

KurtsGranddaughterHelpText:
	text "I get to help"
	line "Grandpa now!"

	para "We'll make good"
	line "BALLS for you, so"
	cont "please wait!"
	done

KurtsGranddaughterFunText:
	text "It's fun to make"
	line "BALLS!"
	done

Apartments789_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, APARTMENT_HALL, 4
	warp_event  3,  7, APARTMENT_HALL, 4
	warp_event  2, 19, APARTMENT_HALL, 5
	warp_event  3, 19, APARTMENT_HALL, 5
	warp_event  2, 31, APARTMENT_HALL, 6
	warp_event  3, 31, APARTMENT_HALL, 6

	def_coord_events

	def_bg_events
	bg_event  7,  7, BGEVENT_READ, Apartments789Trashcan

	def_object_events
	object_event  1, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NPCFisherApt7, -1
	object_event  6, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NPCBugCatcherApt7, -1
	object_event  4, 3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NPCBarberApt7, EVENT_GOLDENROD_UNDERGROUND_OLDER_HAIRCUT_BROTHER
	object_event  6, 26, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt1, EVENT_KURTS_HOUSE_KURT_1
	object_event  1, 27, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter1, EVENT_KURTS_HOUSE_GRANDDAUGHTER_1	
