media
testMediaId

	| model |
	model := MTMedia new.
	
	model id: 42.
	
	self assert: model id equals: 42