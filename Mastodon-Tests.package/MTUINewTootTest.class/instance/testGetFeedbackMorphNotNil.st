render
testGetFeedbackMorphNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getFeedbackMorph notNil