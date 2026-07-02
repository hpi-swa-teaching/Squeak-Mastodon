tests
testAccountHeader

	| model |
	model := MTAccount new.
	
	model header: 'header'.
	
	self assert: model header equals: 'header'