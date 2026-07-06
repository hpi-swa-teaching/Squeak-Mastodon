render-container
testGetButtonContainerNotNIl

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getButtonContainer notNil