updating
updateTextSize

	(self tootTextArea contents size > self maxTextSize)
		ifTrue: [self tootSizeLabel textColor: Color red];
		ifFalse: [self tootSizeLabel textColor: Color black].
	self tootSizeLabel contents: (self tootTextArea contents size asString, '/', self maxTextSize) asHtmlText