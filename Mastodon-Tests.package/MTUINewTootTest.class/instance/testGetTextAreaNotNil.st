render
testGetTextAreaNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getTextArea notNil