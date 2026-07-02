tests
testRelationshipRequested

	| model |
	model := MTRelationship new.
	
	model requested: true.
	
	self assert: model requested equals: true