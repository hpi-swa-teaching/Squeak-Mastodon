helper
handleTab: char withShift: shiftPressed

	| lineEdit |
	char = Character tab ifFalse: [^ false].
	lineEdit := self ownerThatIsA: MTLineEdit.
	lineEdit ifNil: [^ false].
	shiftPressed ifFalse: [lineEdit focusNext] ifTrue: [lineEdit focusPrevious].
	^ true