RandomMap::
	random 3
	ifequal 0, .Father
	ifequal 1, .Son
	ifequal 2, .Ghost
.Father
	checkevent ENGINE_TESTINGFLAG1
	iftrue .bleep
	sjump .alternate
.bleep
	warp AZALEA_TOWN, 7,5
	end

.Son
	checkevent ENGINE_TESTINGFLAG2
	iftrue .bloop
	sjump .alternate
.bloop
	warp PLAYERS_HOUSE_1F, 9, 0
	end
	
.Ghost
	warp NEW_BARK_TOWN, 5, 11
	end

.alternate
	random 3
	ifequal 0, .Father
	ifequal 1, .Son
	ifequal 2, .Ghost
