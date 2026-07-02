tests
testAccountCreatedAt

	| model |
	model := MTAccount new.
	
	model createdAt: 15000000.
	
	self assert: model createdAt equals: 15000000