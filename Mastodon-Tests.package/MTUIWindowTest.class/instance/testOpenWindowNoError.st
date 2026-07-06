initialization
testOpenWindowNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window openWindow] raise: Error.
	
	window delete