add/remove
testRemoveAccessToken
	MTPreferences
		createAccessToken;
		removeAccessToken.
	self assert: MTPreferences accessToken isNil