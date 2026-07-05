accessing
testInReplyToIdUpdatesTitleToNewToot

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView titleMorph contents equals: newTootView newTootTitle