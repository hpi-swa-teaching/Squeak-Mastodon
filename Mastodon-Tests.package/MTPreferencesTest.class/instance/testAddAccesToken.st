add/remove
testAddAccesToken
	MTPreferences addAccessToken.
	self assert: MTPreferences getAccessToken equals: MTPreferences defaultAccessToken