as yet unclassified
testRelationshipId
	| Model |
	
	Model := MTRelationship new.
	
	Model id: 1337.
		
	self assert: (Model id)  equals: (1337). 