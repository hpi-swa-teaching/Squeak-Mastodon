updating
testUpdateVisibilityButtonRaisesErrorForInvalidVisibility

	| newTootView |
	newTootView := MTUINewToot new.
	
	self should: [newTootView visibilitySetting: 'invalid'] raise: Error.
	self should: [newTootView updateVisibilityButton] raise: Error