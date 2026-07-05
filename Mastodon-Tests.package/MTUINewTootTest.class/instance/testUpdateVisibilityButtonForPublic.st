updating
testUpdateVisibilityButtonForPublic

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView visibilitySetting: 'public'.
	newTootView updateVisibilityButton.
	
	self
		assert: newTootView visibilityButton text
		equals: newTootView visibilityButtonText, (newTootView visibilityTranslations at: 'public')