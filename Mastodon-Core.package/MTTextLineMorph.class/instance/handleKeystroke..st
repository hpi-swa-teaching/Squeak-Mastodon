event
handleKeystroke: anEvent

	| edit char constantName newInput |
	char := anEvent keyCharacter.
	char = Character tab ifTrue: [
		edit := self ownerThatIsA: MTLineEdit.
		edit ifNotNil: [
			edit focusNext.
			^ self]].
	constantName := Character constantNameFor: char.
	(constantName notNil and: (#(#space #euro) includes: constantName) = false) ifTrue: [^ super handleKeystroke: anEvent].
	newInput := self contents asString, char.
	(newInput matchesRegex: self pattern) ifFalse: [^ self].
	validator ifNotNil: [(self validator value: newInput) ifFalse: [^ self]].
	^ super handleKeystroke: anEvent