updating
testUpdateVisibilityButtonForPrivate

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView visibilitySetting: 'private'.
	newTootView updateVisibilityButton.
	
	self
		assert: newTootView visibilityButton text
		equals: newTootView visibilityButtonText, (newTootView visibilityTranslations at: 'private')