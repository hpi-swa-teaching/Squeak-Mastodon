as yet unclassified
testTabHandling

	| lineEdit textMorph |
	lineEdit := MTLineEdit new.
	textMorph := lineEdit textMorph.
	self assert: (textMorph handleTab: Character tab).
	self deny: (textMorph handleTab: Character space)