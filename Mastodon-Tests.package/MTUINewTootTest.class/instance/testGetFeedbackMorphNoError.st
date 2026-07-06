render
testGetFeedbackMorphNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getFeedbackMorph] raise: Error