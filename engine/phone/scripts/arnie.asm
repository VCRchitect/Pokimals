ArniePhoneCalleeScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	checkflag ENGINE_ARNIE_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_ARNIE_TUESDAY_MORNING
	iftrue .NotTuesday
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .NotTuesday
	checktime MORN
	iftrue ArnieTuesdayMorning

.NotTuesday:
	checkflag ENGINE_DRAGONFLY_SWARM
	iftrue .AlreadySwarming
	farsjump ArnieHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farsjump ArnieReminderScript

.AlreadySwarming:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farsjump ArnieHurryScript

ArniePhoneCallerScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_ARNIE_READY_FOR_REMATCH
	iftrue .Swarm
	checkflag ENGINE_ARNIE_TUESDAY_MORNING
	iftrue .Swarm
	farscall PhoneScript_Random2
	ifequal 0, ArnieWantsBattle

.Swarm:

ArnieTuesdayMorning:
	setflag ENGINE_ARNIE_TUESDAY_MORNING

ArnieWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	setflag ENGINE_ARNIE_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male


ArnieFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male
