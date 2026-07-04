relationship
testRelationshipFollowing

	| model |
	model := MTRelationship new.
	
	model following: 'name'.
	
	self assert: model following equals: 'name'