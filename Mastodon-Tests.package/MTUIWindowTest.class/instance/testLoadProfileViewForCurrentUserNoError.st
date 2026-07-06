views
testLoadProfileViewForCurrentUserNoError

	| window |
	window := MTUIWindow new.
	
	self shouldnt: [window loadProfileViewForCurrentUser] raise: Error