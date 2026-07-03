render
testRenderAuthorizationViewNoError

	| loginView |
	loginView := MTUILogin new.
	
	self shouldnt: [loginView renderAuthorizationView] raise: Error