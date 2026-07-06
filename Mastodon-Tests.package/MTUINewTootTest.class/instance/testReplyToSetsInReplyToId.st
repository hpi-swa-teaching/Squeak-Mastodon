tests
testReplyToSetsInReplyToId

	| newTootView toot |
	toot := MTDataProvider firstToot.
	newTootView := MTUINewToot replyTo: toot.
	
	self assert: newTootView inReplyToId equals: toot id