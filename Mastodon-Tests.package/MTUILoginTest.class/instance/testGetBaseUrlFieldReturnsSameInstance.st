render
testGetBaseUrlFieldReturnsSameInstance

	| loginView firstField secondField |
	loginView := MTUILogin new.
	
	firstField := loginView getBaseUrlField.
	secondField := loginView getBaseUrlField.
	
	self assert: firstField equals: secondField