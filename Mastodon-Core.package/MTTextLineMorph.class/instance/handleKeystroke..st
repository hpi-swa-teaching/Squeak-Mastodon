event
handleKeystroke: anEvent
	| edit |
	anEvent keyCharacter = Character tab ifTrue: [
		edit := self ownerThatIsA: MTLineEdit.
		edit ifNotNil: [edit focusNext. ^ self]].
	^ super handleKeystroke: anEvent