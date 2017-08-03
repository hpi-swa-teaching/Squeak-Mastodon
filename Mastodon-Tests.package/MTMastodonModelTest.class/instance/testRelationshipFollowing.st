as yet unclassified
testRelationshipFollowing
	| Model |
	
	Model := MTRelationship new.
	
	Model following: 'name'.
		
	self assert: (Model following)  equals: ('name'). 