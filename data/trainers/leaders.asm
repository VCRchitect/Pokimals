; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db BIG_BIRD
	db LARA
	db TPAIN
	db JASON
	db LINCOLN
	db ARNOLD
	db KID_ROCK
	db PEELY
	db WILL
	db BRUNO
	db KAREN
	db KOGA
	db CHAMPION
	db RED
; fallthrough
KantoGymLeaders:
	db BROCK
	db JOSE
	db LT_SURGE
	db ERIKA
	db JANINE
	db SABRINA
	db BLAINE
	db GEIST
	db -1
