actions
testHideFeedbackHidesFeedbackMorph

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView feedbackMorph show.
	
	newTootView hideFeedback.
	
	self deny: newTootView feedbackMorph visible