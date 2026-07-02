accessing
focusNext

	nextField ifNil: [^ self].
	self world activeHand newKeyboardFocus: nextField textMorph