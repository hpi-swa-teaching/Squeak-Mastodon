views
testLoadNewTootViewNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadNewTootView] raise: Error