render
testGetBaseUrlFieldProperties

	| loginView field |
	loginView := MTUILogin new.
	
	field := loginView getBaseUrlField.
	
	self assert: field class equals: MTLineEdit.
	self assert: field helpText equals: 'Enter Server URL here e.g. mastodon.social'