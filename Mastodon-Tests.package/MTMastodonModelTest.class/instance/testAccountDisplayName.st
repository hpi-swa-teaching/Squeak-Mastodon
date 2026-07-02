tests
testAccountDisplayName

	| Model |
	Model := MTAccount new.
	
	Model displayName: 'Florian'.
	
	self assert: Model displayName equals: 'Florian'