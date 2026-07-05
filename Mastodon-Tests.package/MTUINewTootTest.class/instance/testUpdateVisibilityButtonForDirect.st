updating
testUpdateVisibilityButtonForDirect

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView visibilitySetting: 'direct'.
	newTootView updateVisibilityButton.
	
	self
		assert: newTootView visibilityButton text
		equals: newTootView visibilityButtonText, (newTootView visibilityTranslations at: 'direct')