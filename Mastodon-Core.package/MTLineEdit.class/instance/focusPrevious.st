switch-focus
focusPrevious

	previousField ifNil: [^ self].
	self world activeHand newKeyboardFocus: self previousField textMorph