helpers
testGetFormattedAuthorizationCode

	| loginView |
	loginView := MTUILogin new.
	loginView getAuthorizationCodeField theText: 'This is a testing sequence with 45 characters.'.
	
	self assert: loginView getFormattedAuthorizationCode equals: 'This is a testing sequence with 45 characters.'