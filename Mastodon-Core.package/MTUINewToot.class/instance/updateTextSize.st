updating
updateTextSize
	| limit |
	limit := self tootCharacterLimit.
	(self tootTextArea contents size) > limit
		ifTrue: [tootSizeLabel textColor: Color red];
		ifFalse: [tootSizeLabel textColor: Color black].
	self tootSizeLabel contents: (tootTextArea contents size asString, '/', limit asString) asHtmlText.