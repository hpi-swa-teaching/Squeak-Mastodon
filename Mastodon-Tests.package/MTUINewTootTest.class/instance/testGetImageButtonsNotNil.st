render-buttons
testGetImageButtonsNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getImageButtons notNil