updating
testUpdateContentCallsUpdateTootButton

	| newTootView |
	newTootView := MTUINewTootClassTest new.
	newTootView updateContent: 'Test'.
	
	self assert: newTootView updateTootButtonCalled