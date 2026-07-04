account
testAccountId

	| model |
	model := MTAccount new.
	
	model id: 42.
	
	self assert: model id equals: 42