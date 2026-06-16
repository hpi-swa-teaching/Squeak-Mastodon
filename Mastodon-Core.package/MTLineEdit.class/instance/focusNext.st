switch-focus
focusNext

	nextField ifNil: [^ self].
	self world activeHand newKeyboardFocus: self nextField textMorph