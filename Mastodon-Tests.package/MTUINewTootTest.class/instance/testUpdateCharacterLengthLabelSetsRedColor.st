updating
testUpdateCharacterLengthLabelSetsRedColor

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView tootTextArea contents: (String new: newTootView maximumCharacterLength + 1 withAll: $a).
	newTootView updateCharacterLengthLabel.
	
	self assert: newTootView characterLengthLabel textColor equals: Color red