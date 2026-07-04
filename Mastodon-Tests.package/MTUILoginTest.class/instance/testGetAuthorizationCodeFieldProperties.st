render
testGetAuthorizationCodeFieldProperties

	| loginView field |
	loginView := MTUILogin new.
	
	field := loginView getAuthorizationCodeField.
	
	self assert: field class equals: MTLineEdit.
	self assert: field helpText equals: 'Enter authorization code here'