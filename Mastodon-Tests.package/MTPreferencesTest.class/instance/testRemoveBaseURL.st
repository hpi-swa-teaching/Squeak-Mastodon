add/remove
testRemoveBaseURL
	MTPreferences
		addBaseURL;
		removeBaseURL.
	self assert: MTPreferences getBaseURL isNil