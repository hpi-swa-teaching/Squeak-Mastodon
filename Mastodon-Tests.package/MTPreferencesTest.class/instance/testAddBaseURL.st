add/remove
testAddBaseURL
	MTPreferences addBaseURL.
	self assert: MTPreferences getBaseURL equals: MTPreferences defaultBaseURL