render
testGetAuthorizationCodeFieldReturnsSameInstance

	| loginView firstField secondField |
	loginView := MTUILogin new.
	
	firstField := loginView getAuthorizationCodeField.
	secondField := loginView getAuthorizationCodeField.
	
	self assert: firstField equals: secondField