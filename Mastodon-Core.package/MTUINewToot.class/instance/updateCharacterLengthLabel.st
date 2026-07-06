updating
updateCharacterLengthLabel

	| inputedText characterLength |
	inputedText := self tootTextArea contents.
	characterLength := inputedText size.
	
	characterLength > self maximumCharacterLength
		ifTrue: [self characterLengthLabel textColor: Color red]
		ifFalse: [self characterLengthLabel textColor: Color black].
	
	self characterLengthLabel contents: characterLength asString, '/', self maximumCharacterLength asString