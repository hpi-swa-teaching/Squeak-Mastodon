accessing
focusNext

	self nextField ifNil: [^ self].
	self world activeHand newKeyboardFocus: self nextField textMorph