helper
handleTab: char

	| edit |
	char = Character tab ifTrue: [
		edit := self ownerThatIsA: MTLineEdit.
		edit ifNotNil: [edit focusNext]]