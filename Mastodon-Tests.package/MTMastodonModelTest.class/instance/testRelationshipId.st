tests
testRelationshipId

	| model |
	model := MTRelationship new.
	
	model id: 1337.
	
	self assert: model id equals: 1337