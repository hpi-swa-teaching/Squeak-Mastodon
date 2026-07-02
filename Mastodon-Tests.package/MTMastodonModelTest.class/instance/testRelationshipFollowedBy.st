tests
testRelationshipFollowedBy

	| model |
	model := MTRelationship new.
	
	model followedBy: 'name'.
	
	self assert: model followedBy equals: 'name'