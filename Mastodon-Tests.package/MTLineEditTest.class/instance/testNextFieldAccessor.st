tests
testNextFieldAccessor
	| lineEdit nextLineEdit |
	lineEdit := MTLineEdit new.
	nextLineEdit := MTLineEdit new.
	lineEdit nextField: nextLineEdit.
	self assert: lineEdit nextField equals: nextLineEdit.
	
	