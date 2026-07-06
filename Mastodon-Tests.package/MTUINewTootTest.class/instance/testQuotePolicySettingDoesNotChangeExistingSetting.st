accessing
testQuotePolicySettingDoesNotChangeExistingSetting

	| newTootView |
	newTootView := MTUINewToot new.
	
	newTootView quotePolicySetting: 'followers'.
	
	self assert: newTootView quotePolicySetting equals: 'followers'.
	self
		assert: newTootView whoCanQuoteButton text
		equals: newTootView whoCanQuoteButtonText, (newTootView quotePolicyTranslations at: 'followers')