tests
testTabMovesForward

	| world lineEdit next textMorph |
	world := PasteUpMorph newWorldForProject: nil.
	lineEdit := MTLineEdit new.
	next := MTLineEdit new.
	world addAllMorphs: {lineEdit. next}.
	lineEdit nextField: next.
	textMorph := lineEdit textMorph.
	textMorph handleTab: Character tab withShift: false.
	self assert: next textMorph hasKeyboardFocus