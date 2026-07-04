updating
updateContent: aString

	self tootTextArea contents: aString.
	
	self
		updateCharacterLengthLabel;
		updateTootButton