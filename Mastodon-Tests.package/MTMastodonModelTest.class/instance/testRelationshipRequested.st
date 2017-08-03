as yet unclassified
testRelationshipRequested
	| Model |
	
	Model := MTRelationship new.
	
	Model requested: true.
		
	self assert: (Model requested)  equals: (true). 