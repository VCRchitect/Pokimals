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