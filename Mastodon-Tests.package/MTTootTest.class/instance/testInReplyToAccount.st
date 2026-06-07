getter/setter
testInReplyToAccount

	| toot |
	toot := MTToot new.
	
	toot inReplyToAccountID: DataProvider defaultAccountId.
	
	self assert: toot inReplyToAccountID equals: DataProvider defaultAccountId