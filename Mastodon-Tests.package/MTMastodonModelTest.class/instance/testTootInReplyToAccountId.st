tests
testTootInReplyToAccountId

	| model |
	model := MTToot new.
	
	model inReplyToAccountID: 1337.
	
	self assert: model inReplyToAccountID equals: 1337