accessing
testVisibilitySettingUpdatesVisibilityButton

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView visibilitySetting.
	
	self
		assert: newTootView visibilityButton text
		equals: newTootView visibilityButtonText, (newTootView visibilityTranslations at: newTootView defaultVisibilitySetting)