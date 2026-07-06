accessing
testVisibilitySettingReturnsDefaultVisibilitySetting

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView visibilitySetting equals: newTootView defaultVisibilitySetting