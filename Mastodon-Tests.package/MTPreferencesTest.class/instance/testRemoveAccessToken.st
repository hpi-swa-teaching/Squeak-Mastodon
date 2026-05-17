add/remove
testRemoveAccessToken
	MTPreferences
		addAccessToken;
		removeAccessToken.
	self assert: MTPreferences getAccessToken isNil