EmptyTable::
  db (.end - @) >> 1
	dw .001
	dw .002
	dw .003
	dw .004
	dw .005
.end


.001
	text "Huh? It's empty!"
	done

.002
	text "There's nothing in"
	line "here!"
	done

.003
	text "Dang, nothing"
	line "inside."
	done

.004
	text "Welp, that's a"
	line "disappointment."
	cont "It's empty!"
	done

.005
	text "What a rip-off!"
	line "It's empty inside!"
	done
	
	
ElmTextTable::
	db (.end - @) >> 1
	dw .001
	dw .002
	dw .003
	dw .004
	dw .005
	dw .006
	dw .007
.end

.001
	text "There's some hella"
	line "spooky stuff in"
	cont "The Ruins."
	
	para "I heard someone"
	line "saw a WENDIGO!"
	done

.002
	text "Once you've made"
	line "it decently far,"
	
	para "You might have the"
	line "option to choose"
	cont "your path."
	done

.003
	text "Don't hesitate to"
	line "explore The Site a"
	cont "bit before you go!"
	done

.004
	text "If you can't find"
	line "an ANIMAL in The"
	
	para "Ruins, maybe you"
	line "will see it later"
	cont "in the game..."
	done

.005
	text "I think someone"
	line "told me the doors"

	para "open after you've"
	line "beaten 5 ANIMALs."
	done

.006
	text "New TMs will be"
	line "available in The"
	cont "Site Mart later."
	done
	
.007
	text "If you're having"
	line "trouble, build up"
	cont "your team!"
	
	para "Catch lots of"
	line "different ANIMALs!"
	done	
	
GruntText::	
	db (.end - @) >> 1
	dw .001
	dw .002
	dw .003
	dw .004
	dw .005
	dw .006
	dw .007
.end

.001
	text "JOSE will be mad"
	line "if we don't beat"
	cont "you up!"
	done

.002
	text "The boss says we"
	line "gotta rearrange"
	cont "your ass and face."
	done

.003
	text "Nobody makes JOSE"
	line "look like a fool!"
	cont "Except for JOSE!"
	done

.004
	text "You're not so"
	line "tough! JOSE will"
	cont "have his revenge!"
	done

.005
	text "DURRRR, DA BOSS"
	line "SAYS WE GOTSTA"
	cont "GET YOU!"
	done

.006
	text "I don't get paid"
	line "enough to beat up"
	cont "a child. -SIGH-"
	done
	
.007
	text "JOSE says that if"
	line "we don't wreck you"
	cont "he will roast us."
	done		
	
.008
	text "..."
	line "JOSE sends hate."
	done
	
.009
	text "You're about to"
	line "witness the power"
	cont "of JOSE!"
	done
	
.010
	text "I don't like JOSE,"
	line "but I REALLY don't"
	cont "like kids."
	done
