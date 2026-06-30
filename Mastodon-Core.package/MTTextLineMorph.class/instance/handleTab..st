helper
handleTab: char
	| lineEdit |
	char = Character tab ifTrue: [
		lineEdit := self ownerThatIsA: MTLineEdit.
		lineEdit ifNotNil: [
			lineEdit focusNext.
			^ true]].
	^ false