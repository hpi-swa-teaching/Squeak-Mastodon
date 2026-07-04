toot
testTootReblogged

	| model |
	model := MTToot new.
	
	model reblogged: true.
	
	self assert: model reblogged equals: true