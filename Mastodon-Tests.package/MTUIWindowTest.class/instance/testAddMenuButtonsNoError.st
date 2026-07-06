render
testAddMenuButtonsNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window addMenuButtons] raise: Error