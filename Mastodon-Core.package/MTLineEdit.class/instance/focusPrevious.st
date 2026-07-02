switch-focus
focusPrevious

	self previousField ifNil: [^ self].
	self world activeHand newKeyboardFocus: self previousField textMorph