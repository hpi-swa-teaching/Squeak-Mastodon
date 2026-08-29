toot
testTootInReplyToId

	| model |
	model := MTToot new.
	
	model inReplyToID: 1337.
	
	self assert: model inReplyToID equals: 1337