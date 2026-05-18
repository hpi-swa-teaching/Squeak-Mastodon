add/remove
testRemoveBaseURL
	MTPreferences
		createBaseURL;
		removeBaseURL.
	self assert: MTPreferences baseURL isNil