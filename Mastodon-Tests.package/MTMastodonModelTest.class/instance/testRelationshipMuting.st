as yet unclassified
testRelationshipMuting
	| Model |
	
	Model := MTRelationship new.
	
	Model muting: 'nobody'.
		
	self assert: (Model muting)  equals: ('nobody'). 