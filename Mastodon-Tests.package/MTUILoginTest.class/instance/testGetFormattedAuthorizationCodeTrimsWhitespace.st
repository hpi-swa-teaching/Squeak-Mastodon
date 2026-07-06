helpers
testGetFormattedAuthorizationCodeTrimsWhitespace

	| loginView |
	loginView := MTUILogin new.
	loginView getAuthorizationCodeField theText: '   This is a testing sequence with 48 characters.'.
	
	self assert: loginView getFormattedAuthorizationCode equals: 'This is a testing sequence with 48 characters.'