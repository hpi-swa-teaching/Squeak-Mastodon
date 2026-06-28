tests
testReplyToPrefillsMentionHandle

	| toot newToot |
	toot := MTToot from: DataProvider defaultTootPlainJsonObject.
	newToot := MTUINewToot replyTo: toot.

	self
		assert: newToot tootTextArea contents asString
		equals: '@', toot account federatedUsername, ' '