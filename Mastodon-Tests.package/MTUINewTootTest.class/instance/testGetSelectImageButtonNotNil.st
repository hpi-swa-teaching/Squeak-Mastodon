render-buttons
testGetSelectImageButtonNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getSelectImageButton notNil