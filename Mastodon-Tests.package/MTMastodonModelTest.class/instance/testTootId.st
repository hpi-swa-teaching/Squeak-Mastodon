tests
testTootId

	| model |
	model := MTToot new.
	
	model id: 42.
	
	self assert: model id equals: 42