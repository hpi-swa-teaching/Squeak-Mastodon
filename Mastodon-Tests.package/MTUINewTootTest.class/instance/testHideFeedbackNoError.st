actions
testHideFeedbackNoError

	| newTootView |
	newTootView := MTUINewToot new.

	self shouldnt: [ newTootView hideFeedback ] raise: Error