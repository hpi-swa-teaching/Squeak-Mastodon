updating
testUpdateVisibilityButtonForUnlisted

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView visibilitySetting: 'unlisted'.
	newTootView updateVisibilityButton.
	
	self
		assert: newTootView visibilityButton text
		equals: newTootView visibilityButtonText, (newTootView visibilityTranslations at: 'unlisted')