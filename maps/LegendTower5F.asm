	object_const_def
	const TOWERDEVIL

LegendTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

JerzyDevil:
	faceplayer
	refreshscreen
	pokepic JERZYDEVIL
	cry JERZYDEVIL
	pause 15
	closepokepic
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FENRIR
	loadwildmon JERZYDEVIL, 99
	startbattle
	disappear TOWERDEVIL
	reloadmapafterbattle 
 givemoney YOUR_MONEY, 500
	refreshscreen
	playsound SFX_STRENGTH
	earthquake 80
	closetext
	setflag ENGINE_LETTAH_DEX	
	warp PLAYERS_HOUSE_2F, 3, 3
	pause 15
	opentext
	writetext AllADream
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 60
	special FadeInQuickly	
	end

AllADream:
	text "My god... Was it"
	line "just a dream? Was"
	cont "it all in my head?"

	para "Was I a liar the"
	line "whole time?"
	
	para "An unreliable"
	line "narrator?"
	
	para "No... It can't be."
	
	para "That's always a"
	line "terrible ending."

	para "..."

	para "Huh? What's in my"
	line "pocket? Some kind"
	cont "of book?"
	
	para "The LETTAHDEX?"
	line "Oh great. Now I"
	cont "have to go catch"
	
	para "everything, even"
	line "the alphabet."
	
	para "Welp, no sense in"
	line "waiting. Let's go!"

	para "-CUE INSPIRATIONAL"
	line "MUSIC HERE-"
	done
	
LegendTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, LEGENDTOWER4F, 1


	def_coord_events

	def_bg_events	

	def_object_events
	object_event  6,  4, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JerzyDevil, EVENT_FOUGHT_FAKE_BUSH
