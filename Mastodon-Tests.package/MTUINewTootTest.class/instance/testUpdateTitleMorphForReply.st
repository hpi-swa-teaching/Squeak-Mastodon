updating
testUpdateTitleMorphForReply

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		inReplyToId: MTDataProvider firstAccountID;
		updateTitleMorph.
	
	self assert: newTootView titleMorph contents string equals: newTootView replyTitle string