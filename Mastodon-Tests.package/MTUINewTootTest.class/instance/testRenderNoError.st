render
testRenderNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: newTootView render raise: Error