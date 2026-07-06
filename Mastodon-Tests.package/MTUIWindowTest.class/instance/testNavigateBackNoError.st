views-helpers
testNavigateBackNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window navigateBack] raise: Error