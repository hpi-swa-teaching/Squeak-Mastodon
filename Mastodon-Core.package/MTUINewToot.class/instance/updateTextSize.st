updating
updateTextSize

	(self tootTextArea contents size > 500)
		ifTrue: [tootSizeLabel textColor: Color red];
		ifFalse: [tootSizeLabel textColor: Color black].
	self tootSizeLabel contents: (tootTextArea contents size asString, '/500') asHtmlText.
	self tootTextArea contents size = 0
		ifTrue: [sendButton active: false]
		ifFalse: [sendButton active: true]
		