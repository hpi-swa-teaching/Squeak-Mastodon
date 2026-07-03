updating
updateTextSize

	| limit |
	limit := self tootCharacterLimit.
	(self tootTextArea contents size > limit)
		ifTrue: [self tootSizeLabel textColor: Color red];
		ifFalse: [self tootSizeLabel textColor: Color black].
	self tootSizeLabel contents: (self tootTextArea contents size asString, '/', limit asString) asHtmlText