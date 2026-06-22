updating
updateTextSize

	(self tootTextArea contents size > self maxTextSize)
		ifTrue: [self tootSizeLabel textColor: Color red];
		ifFalse: [self tootSizeLabel textColor: Color black].
	self tootSizeLabel contents: (self tootTextArea contents size asString, '/', self maxTextSize asString) asHtmlText.
	self tootTextArea contents size = 0
		ifTrue: [self media ifEmpty: [self sendButton enabled: false]]
		ifFalse: [self sendButton enabled: true]