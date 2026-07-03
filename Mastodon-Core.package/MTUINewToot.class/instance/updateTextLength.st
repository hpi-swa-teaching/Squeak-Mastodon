updating
updateTextLength

	| textLength |
	textLength := self tootTextArea contents size.
	
	self tootLengthLabel textColor: (textLength > self maxTextLength ifTrue: Color red ifFalse: Color black).
	
	self tootLengthLabel contents: textLength asString, '/', self maxTextLength asString.
	
	(textLength = 0 and: [self media isEmpty])
		ifTrue: [self sendButton enabled: false]
		ifFalse: [self sendButton enabled: true]