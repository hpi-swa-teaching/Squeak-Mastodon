tests
testRelationshipBlocking

	| model |
	model := MTRelationship new.
	
	model blocking: true.
	
	self assert: model blocking equals: true