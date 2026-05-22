event
handleKeystroke: anEvent

	| edit char constantName |
	char := anEvent keyCharacter.
	char = Character tab ifTrue: [
		edit := self ownerThatIsA: MTLineEdit.
		edit ifNotNil: [
			edit focusNext.
			^ self]].
	constantName := Character constantNameFor: char.
	((#(#space #euro) includes: constantName) = false and: constantName notNil) ifTrue: [^ super handleKeystroke: anEvent].
	(self max notNil and: [self contents asString size >= self max]) ifTrue: [^ self].
	(char asString matchesRegex: self filter) ifTrue: [^ super handleKeystroke: anEvent]