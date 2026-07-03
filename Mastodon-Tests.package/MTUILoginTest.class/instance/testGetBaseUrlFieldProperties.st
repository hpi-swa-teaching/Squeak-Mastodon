render
testGetBaseUrlFieldProperties

	| loginView field |
	loginView := MTUILogin new.
	
	field := loginView getBaseUrlField.
	
	self assert: field class equals: MTLineEdit.
	self assert: field height equals: 36.
	self assert: field hResizing equals: #spaceFill.
	self assert: field helpText equals: 'Enter Server URL here e.g. mastodon.social'