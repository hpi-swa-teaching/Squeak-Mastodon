updating
updateTextSize
	(self scheduledTootTextarea contents size) > 500
		ifTrue: [tootSizeLabel textColor: Color red];
		ifFalse: [tootSizeLabel textColor: Color black].
	self tootSizeLabel contents: (scheduledTootTextArea contents size asString, '/500') asHtmlText.