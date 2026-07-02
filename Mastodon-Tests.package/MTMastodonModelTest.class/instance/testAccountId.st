tests
testAccountId

	| Model |
	Model := MTAccount new.
	
	Model id: 42.
	
	self assert: Model id equals: 42