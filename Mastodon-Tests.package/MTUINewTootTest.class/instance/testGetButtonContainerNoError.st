render-container
testGetButtonContainerNoError

	| newTootView |
	newTootView := MTUINewToot new.
	
	self shouldnt: [newTootView getButtonContainer] raise: Error