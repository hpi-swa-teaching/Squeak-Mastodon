accessing
testInReplyToIdUpdatesTitleToReply

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView inReplyToId: MTDataProvider firstTootID.
	
	self assert: newTootView titleMorph contents equals: newTootView replyTitle