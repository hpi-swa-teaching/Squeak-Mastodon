toot
testTootCreatedAt

	| model |
	model := MTToot new.
	
	model createdAt: 1500000000.
	
	self assert: model createdAt equals: 1500000000