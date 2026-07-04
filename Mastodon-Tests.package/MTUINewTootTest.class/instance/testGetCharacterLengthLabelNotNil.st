render
testGetCharacterLengthLabelNotNil

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView getCharacterLengthLabel notNil