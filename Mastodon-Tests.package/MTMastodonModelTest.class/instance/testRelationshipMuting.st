relationship
testRelationshipMuting

	| model |
	model := MTRelationship new.
	
	model muting: 'nobody'.
	
	self assert: model muting equals: 'nobody'