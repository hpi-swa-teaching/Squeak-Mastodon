updating
testUpdateContentCallsUpdateCharacterLengthLabel

	| newTootView |
	newTootView := MTUINewTootClassTest new.
	newTootView updateContent: 'Test'.
	
	self assert: newTootView updateCharacterLengthLabelCalled