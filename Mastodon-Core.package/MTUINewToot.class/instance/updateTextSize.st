updating
updateTextSize

	(tootTextArea contents size > self maxTextSize)
		ifTrue: [tootSizeLabel textColor: Color red];
		ifFalse: [tootSizeLabel textColor: Color black].
	tootSizeLabel contents: (tootTextArea contents size asString, '/', self maxTextSize asString) asHtmlText.
	tootTextArea contents size = 0
		ifTrue: [imageMorph = 'empty' ifTrue: [sendButton enabled: false]]
		ifFalse: [sendButton enabled: true]