accessing
testVisibilitySettingDoesNotChangeExistingSetting

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView visibilitySetting: 'private'.
	
	self assert: newTootView visibilitySetting equals: 'private'.
	self
		assert: newTootView visibilityButton text
		equals: newTootView visibilityButtonText, (newTootView visibilityTranslations at: 'private')