accessing
testButtonsReturnsSameInstance

	| menuBar firstButtons secondButtons |
	menuBar := MTUIMenu new.
	
	firstButtons := menuBar buttons.
	secondButtons := menuBar buttons.
	
	self assert: firstButtons equals: secondButtons