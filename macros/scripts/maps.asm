map_id: MACRO
;\1: map id
	assert DEF(GROUP_\1) && DEF(MAP_\1), \
		"Missing 'map_const \1' in constants/map_constants.asm"
	db GROUP_\1, MAP_\1
ENDM

object_const_def EQUS "const_def 2"

def_scene_scripts: MACRO
REDEF _NUM_SCENE_SCRIPTS EQUS "_NUM_SCENE_SCRIPTS_\@"
	db {_NUM_SCENE_SCRIPTS}
{_NUM_SCENE_SCRIPTS} = 0
ENDM

scene_script: MACRO
;\1: script pointer
	dw \1
	dw 0 ; filler
{_NUM_SCENE_SCRIPTS} += 1
ENDM

def_callbacks: MACRO
REDEF _NUM_CALLBACKS EQUS "_NUM_CALLBACKS_\@"
	db {_NUM_CALLBACKS}
{_NUM_CALLBACKS} = 0
ENDM

callback: MACRO
;\1: type: a MAPCALLBACK_* constant
;\2: script pointer
	dbw \1, \2
{_NUM_CALLBACKS} += 1
ENDM

def_warp_events: MACRO
REDEF _NUM_WARP_EVENTS EQUS "_NUM_WARP_EVENTS_\@"
	db {_NUM_WARP_EVENTS}
{_NUM_WARP_EVENTS} = 0
ENDM

warp_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: map id: from constants/map_constants.asm
;\4: warp destination: starts at 1
	db \2, \1, \4
	map_id \3
{_NUM_WARP_EVENTS} += 1
ENDM

def_coord_events: MACRO
REDEF _NUM_COORD_EVENTS EQUS "_NUM_COORD_EVENTS_\@"
	db {_NUM_COORD_EVENTS}
{_NUM_COORD_EVENTS} = 0
ENDM

coord_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: scene id: a SCENE_* constant; controlled by setscene/setmapscene
;\4: script pointer
	db \3, \2, \1
	db 0 ; filler
	dw \4
	dw 0 ; filler
{_NUM_COORD_EVENTS} += 1
ENDM

def_bg_events: MACRO
REDEF _NUM_BG_EVENTS EQUS "_NUM_BG_EVENTS_\@"
	db {_NUM_BG_EVENTS}
{_NUM_BG_EVENTS} = 0
ENDM

bg_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: function: a BGEVENT_* constant
;\4: script pointer
	db \2, \1, \3
	dw \4
{_NUM_BG_EVENTS} += 1
ENDM

def_object_events: MACRO
REDEF _NUM_OBJECT_EVENTS EQUS "_NUM_OBJECT_EVENTS_\@"
	db {_NUM_OBJECT_EVENTS}
{_NUM_OBJECT_EVENTS} = 0
ENDM

object_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: sprite: a SPRITE_* constant
;\4: movement function: a SPRITEMOVEDATA_* constant
;\5, \6: movement radius: x, y
;\7, \8: hour limits: h1, h2 (0-23)
;  * if h1 < h2, the object_event will only appear from h1 to h2
;  * if h1 > h2, the object_event will not appear from h2 to h1
;  * if h1 == h2, the object_event will always appear
;  * if h1 == -1, h2 is treated as a time-of-day value:
;    a combo of MORN, DAY, and/or NITE, or -1 to always appear
;\9: color: a PAL_NPC_* constant, or 0 for sprite default
;\<10>: function: a OBJECTTYPE_* constant
;\<11>: sight range: applies to OBJECTTYPE_TRAINER
;\<12>: script pointer
;\<13>: event flag: an EVENT_* constant, or -1 to always appear
	db \3, \2 + 4, \1 + 4, \4
	dn \6, \5
	db \7, \8
	dn \9, \<10>
	db \<11>
	dw \<12>, \<13>
; the dummy PlayerObjectTemplate object_event has no def_object_events
if DEF(_NUM_OBJECT_EVENTS)
{_NUM_OBJECT_EVENTS} += 1
endc
ENDM

trainer: MACRO
;\1: trainer group
;\2: trainer id
;\3: flag: an EVENT_BEAT_* constant
;\4: seen text
;\5: win text
;\6: loss text
;\7: after-battle text
	dw \3
	db \1, \2
	dw \4, \5, \6, \7
ENDM

itemball: MACRO
;\1: item: from constants/item_constants.asm
;\2: quantity: default 1
if _NARG == 1
	itemball \1, 1
else
	db \1, \2
endc
ENDM

hiddenitem: MACRO
;\1: item: from constants/item_constants.asm
;\2: flag: an EVENT_* constant
	dwb \2, \1
ENDM

elevfloor: MACRO
;\1: floor: a FLOOR_* constant
;\2: warp destination: starts at 1
;\3: map id
	db \1, \2
	map_id \3
ENDM

conditional_event: MACRO
;\1: flag: an EVENT_* constant
;\2: script pointer
	dw \1, \2
ENDM

cmdqueue: MACRO
;\1: type: a CMDQUEUE_* constant
;\2: data pointer
	dbw \1, \2
	dw 0 ; filler
ENDM

stonetable: MACRO
;\1: warp id
;\2: object_event id
;\3: script pointer
	db \1, \2
	dw \3
ENDM

warper: MACRO
.loop
	random 11
	ifequal 0, .1
	ifequal 1, .2
	ifequal 2, .3
	ifequal 3, .4
	ifequal 4, .5
	ifequal 5, .6
	ifequal 6, .7
	ifequal 7, .8
	ifequal 8, .9
	ifequal 9, .10
	ifequal 10, .11
	
.1
	warp A2, 4, 8
	end
	
.2
	warp A3, 4, 8
	end
.3
	warp A4, 8, 8
	end
.4
	warp A5, 4, 8
	end
.5
	warp A6, 4, 8
	end
.6
	warp A7, 10, 1
	end
.7
	warp A8, 4, 8
	end
.8
	warp A9, 6, 8
	end
.9
	warp A12, 4, 4
	end

.10
	warp A13, 4, 8
	end

.11
	warp A14, 4, 8
	end
ENDM

warperB: MACRO
.loop
	random 11
	ifequal 0, .1
	ifequal 1, .2
	ifequal 2, .3
	ifequal 3, .4
	ifequal 4, .5
	ifequal 5, .6
	ifequal 6, .7
	ifequal 7, .8
	ifequal 8, .9
	ifequal 9, .10
	ifequal 10, .11
	ifequal 11, .12

.1
	warp B2, 4, 6
	end

.2
	warp B3, 6, 8
	end

.3
	warp B4, 4, 8
	end

.4
	warp B5, 4, 8
	end

.5
	warp B6, 4, 8
	end

.6
	warp B7, 4, 6
	end

.7
	warp B8, 4, 8
	end

.8
	warp B9, 4, 8
	end

.9
	warp B11, 4, 8
	end

.10
	warp B12, 4, 8
	end

.11
	warp B13, 4, 8
	end
	
.12
	warp B14, 4, 8
ENDM

warperC: MACRO
.loop
	random 11
	ifequal 0, .1
	ifequal 1, .2
	ifequal 2, .3
	ifequal 3, .4
	ifequal 4, .5
	ifequal 5, .6
	ifequal 6, .7
	ifequal 7, .8
	ifequal 8, .9
	ifequal 9, .10
	ifequal 10, .11
	
.1
	warp C2, 4, 8
	end
	
.2
	warp C3, 4, 8
	end
.3
	warp C4, 8, 8
	end
.4
	warp C5, 4, 8
	end
.5
	warp C6, 4, 8
	end
.6
	warp C7, 10, 1
	end
.7
	warp C8, 4, 8
	end
.8
	warp C9, 6, 8
	end
.9
	warp C12, 4, 4
	end

.10
	warp C13, 4, 8
	end

.11
	warp C14, 4, 8
	end
ENDM

warperD: MACRO
.loop
	random 11
	ifequal 0, .1
	ifequal 1, .2
	ifequal 2, .3
	ifequal 3, .4
	ifequal 4, .5
	ifequal 5, .6
	ifequal 6, .7
	ifequal 7, .8
	ifequal 8, .9
	ifequal 9, .10
	ifequal 10, .11
	ifequal 11, .12

.1
	warp D2, 4, 6
	end

.2
	warp D3, 6, 8
	end

.3
	warp D4, 4, 8
	end

.4
	warp D5, 4, 8
	end

.5
	warp D6, 4, 8
	end

.6
	warp D7, 4, 6
	end

.7
	warp D8, 4, 8
	end

.8
	warp D9, 4, 8
	end

.9
	warp D11, 4, 8
	end

.10
	warp D12, 4, 8
	end

.11
	warp D13, 4, 8
	end
	
.12
	warp D14, 4, 8
	end
ENDM

warperE: MACRO
.loop
	random 11
	ifequal 0, .1
	ifequal 1, .2
	ifequal 2, .3
	ifequal 3, .4
	ifequal 4, .5
	ifequal 5, .6
	ifequal 6, .7
	ifequal 7, .8
	ifequal 8, .9
	ifequal 9, .10
	ifequal 10, .11
	ifequal 11, .12
	
.1
	warp E2, 4, 6
	end
	
.2
	warp E3, 6, 8
	end
.3
	warp E4, 4, 8
	end
.4
	warp E5, 4, 8
	end
.5
	warp E6, 4, 8
	end
.6
	warp E7, 4, 6
	end
.7
	warp E8, 4, 8
	end
.8
	warp E9, 4, 8
	end
	
.9 
	warp E11, 4, 8

.10
	warp E12, 4, 8
	end

.11
	warp E13, 4, 8
	end

.12
	warp E14, 4, 8
	end
ENDM

warperF: MACRO
.loop
	random 11
	ifequal 0, .1
	ifequal 1, .2
	ifequal 2, .3
	ifequal 3, .4
	ifequal 4, .5
	ifequal 5, .6
	ifequal 6, .7
	ifequal 7, .8
	ifequal 8, .9
	ifequal 9, .10
	ifequal 10, .11
	ifequal 11, .12

.1
	warp F2, 4, 6
	end

.2
	warp F3, 6, 8
	end

.3
	warp F4, 4, 8
	end

.4
	warp F5, 4, 8
	end

.5
	warp F6, 4, 8
	end

.6
	warp F7, 4, 6
	end

.7
	warp F8, 4, 8
	end

.8
	warp F9, 4, 8
	end

.9
	warp F11, 4, 8
	end

.10
	warp F12, 4, 8
	end

.11
	warp F13, 4, 8
	end
	
.12
	warp F14, 4, 8
	end
ENDM



