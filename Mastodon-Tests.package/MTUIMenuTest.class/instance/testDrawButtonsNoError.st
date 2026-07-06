morphic
testDrawButtonsNoError

	| menuBar |
	menuBar := MTUIMenu new.
	
	self shouldnt: [menuBar drawButtons] raise: Error