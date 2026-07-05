accessing
testQuotePolicySettingReturnsDefaultQuotePolicySetting

	| newTootView |
	newTootView := MTUINewToot new.
	
	self assert: newTootView quotePolicySetting equals: newTootView defaultQuotePolicySetting