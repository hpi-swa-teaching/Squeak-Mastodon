accessing
testQuotePolicySettingUpdatesWhoCanQuoteButton

	| newTootView |
	newTootView := MTUINewToot new.
	newTootView quotePolicySetting.
	
	self
		assert: newTootView whoCanQuoteButton text
		equals: newTootView whoCanQuoteButtonText, (newTootView quotePolicyTranslations at: newTootView defaultQuotePolicySetting)