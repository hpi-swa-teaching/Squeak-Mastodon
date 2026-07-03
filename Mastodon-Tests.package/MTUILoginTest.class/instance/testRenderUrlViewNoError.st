render
testRenderUrlViewNoError

	| loginView |
	loginView := MTUILogin new.
	
	self shouldnt: [loginView renderUrlView] raise: Error