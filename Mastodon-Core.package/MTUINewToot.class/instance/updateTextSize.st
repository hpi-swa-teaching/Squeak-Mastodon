updating
updateTextSize

	(self tootTextArea contents size > self maxTextSize)
		ifTrue: [tootSizeLabel textColor: Color red];
		ifFalse: [tootSizeLabel textColor: Color black].
	self tootSizeLabel contents: (tootTextArea contents size asString, '/', self maxTextSize) asHtmlText