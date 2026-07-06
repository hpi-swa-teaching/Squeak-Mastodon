render
testGetTitleMorphNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getTitleMorph] raise: Error