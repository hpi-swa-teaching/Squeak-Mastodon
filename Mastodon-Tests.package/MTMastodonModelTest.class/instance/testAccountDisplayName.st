as yet unclassified
testAccountDisplayName
	| Model |
	
	Model := MTAccount new.
	
	Model displayName: 'Florian'.
	
	self assert: (Model displayName)  equals: ('Florian'). 