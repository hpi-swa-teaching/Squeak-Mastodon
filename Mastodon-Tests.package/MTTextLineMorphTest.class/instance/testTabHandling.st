tests
testTabHandling

	| lineEdit textMorph |
	lineEdit := MTLineEdit new.
	textMorph := lineEdit textMorph.
	self assert: (textMorph handleTab: Character tab withShift: true).
	self assert: (textMorph handleTab: Character tab withShift: false).
	self deny: (textMorph handleTab: Character space withShift: true)