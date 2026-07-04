render-buttons
testGetVisibilityButtonNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getVisibilityButton notNil