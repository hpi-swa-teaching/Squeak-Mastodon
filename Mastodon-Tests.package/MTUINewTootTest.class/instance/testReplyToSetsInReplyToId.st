tests
testReplyToSetsInReplyToId

	| toot reply |
	toot := MTToot from: DataProvider defaultTootPlainJsonObject.
	reply := MTUINewToot replyTo: toot.

	self assert: reply inReplyToId equals: toot id