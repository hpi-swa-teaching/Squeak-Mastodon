as yet unclassified
testRelationshipBlocking
	| Model |
	
	Model := MTRelationship new.
	
	Model blocking: true.
		
	self assert: (Model blocking)  equals: (true). 