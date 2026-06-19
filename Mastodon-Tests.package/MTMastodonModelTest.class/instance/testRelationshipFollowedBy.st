as yet unclassified
testRelationshipFollowedBy
	| Model |
	
	Model := MTRelationship new.
	
	Model followedBy:  'name'.
		
	self assert: (Model followedBy)  equals: ('name'). 