focus
testFocusNextWithoutNextFieldReturnsSelf

	| edit |
	edit := MTLineEdit new.
	
	self assert: edit nextField equals: nil.
	self assert: edit focusNext == edit