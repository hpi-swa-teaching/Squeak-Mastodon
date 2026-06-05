helper
handleTab: event

	| lineEdit |
	event keyCharacter = Character tab ifFalse: [^ false].
	lineEdit := self ownerThatIsA: MTLineEdit.
	lineEdit ifNil: [^ false].
	event shiftPressed ifFalse: [lineEdit focusNext] ifTrue: [lineEdit focusPrevious].
	^ true