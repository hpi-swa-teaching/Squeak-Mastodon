render
testGetVisibilityWindowNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getVisibilityWindow notNil