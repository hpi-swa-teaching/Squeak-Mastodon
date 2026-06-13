event
handleKeystroke: anEvent
	| lineEdit |
	anEvent keyCharacter = Character tab ifTrue: [
		lineEdit := self ownerThatIsA: MTLineEdit.
		lineEdit ifNotNil: [lineEdit focusNext. ^ self]].
	^ super handleKeystroke: anEvent