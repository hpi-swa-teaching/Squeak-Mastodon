tests
testAccountDisplayName

	| model |
	model := MTAccount new.
	
	model displayName: 'Florian'.
	
	self assert: model displayName equals: 'Florian'