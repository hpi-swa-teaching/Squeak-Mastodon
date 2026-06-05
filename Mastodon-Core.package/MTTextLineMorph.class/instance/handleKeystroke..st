event
handleKeystroke: anEvent

	| char newInput |
	char := anEvent keyCharacter.
	(self handleTab: anEvent) ifTrue: [^ self].
	(self isSpecialCharacter: char) ifTrue: [^ super handleKeystroke: anEvent].
	newInput := self contents asString, char.
	(self match: newInput) ifFalse: [^ self].
	(self validate: newInput) ifFalse: [^ self].
	^ super handleKeystroke: anEvent