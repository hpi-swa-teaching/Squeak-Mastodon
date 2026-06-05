getter/setter
testInReplyToID

	| toot |
	toot := MTToot new.
	
	toot inReplyToID: DataProvider defaultTootId.
	
	self assert: toot inReplyToID equals: DataProvider defaultTootId