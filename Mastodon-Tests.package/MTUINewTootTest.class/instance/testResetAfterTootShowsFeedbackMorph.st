actions
testResetAfterTootShowsFeedbackMorph

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView feedbackMorph hide.
	
	newTootView resetAfterToot.
	
	self assert: newTootView feedbackMorph visible