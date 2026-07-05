actions
testShowFeedbackShowsFeedbackMorph

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView feedbackMorph hide.

	newTootView showFeedback.
	
	self assert: newTootView feedbackMorph visible