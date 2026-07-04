updating
testUpdateTitleMorphForNewToot

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView
		inReplyToId: nil;
		updateTitleMorph.
	
	self assert: newTootView titleMorph contents string equals: newTootView newTootTitle string