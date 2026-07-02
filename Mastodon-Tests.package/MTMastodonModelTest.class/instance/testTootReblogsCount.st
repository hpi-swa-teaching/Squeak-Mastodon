tests
testTootReblogsCount

	| model |
	model := MTToot new.
	
	model reblogsCount: 5.
	
	self assert: model reblogsCount equals: 5