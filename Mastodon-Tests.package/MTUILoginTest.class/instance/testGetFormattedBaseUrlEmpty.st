helpers
testGetFormattedBaseUrlEmpty

	| loginView |
	loginView := MTUILogin new.
	loginView getBaseUrlField theText: '   '.
	
	self assert: loginView getFormattedBaseUrl equals: ''