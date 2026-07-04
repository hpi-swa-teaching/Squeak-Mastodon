accessing
testNextFieldAccessor

	| selected other |
	selected := MTLineEdit new.
	other := MTLineEdit new.
	selected nextField: other.
	self assert: selected nextField == other