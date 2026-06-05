tests
testShiftTabMovesBack

	| world lineEdit prev textMorph |
	world := PasteUpMorph newWorldForProject: nil.
	lineEdit := MTLineEdit new.
	prev := MTLineEdit new.
	world addAllMorphs: {lineEdit. prev}.
	lineEdit previousField: prev.
	textMorph := lineEdit textMorph.
	textMorph handleTab: Character tab withShift: true.
	self assert: prev textMorph hasKeyboardFocus