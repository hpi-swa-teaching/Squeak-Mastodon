updating
testUpdateCharacterLengthLabelSetsBlackColor

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: 'Test'.
	newTootView updateCharacterLengthLabel.
	
	self assert: newTootView characterLengthLabel textColor equals: Color black