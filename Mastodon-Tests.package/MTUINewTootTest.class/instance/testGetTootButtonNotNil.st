render-buttons
testGetTootButtonNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getTootButton notNil