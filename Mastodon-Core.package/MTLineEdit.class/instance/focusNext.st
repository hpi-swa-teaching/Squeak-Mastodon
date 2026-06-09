accessing
focusNext
	nextField ifNotNil: [self world activeHand newKeyboardFocus: nextField textMorph]