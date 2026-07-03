render
testRenderNoError

	| loginView |
	loginView := MTUILogin new.
	
	self shouldnt: [loginView render] raise: Error