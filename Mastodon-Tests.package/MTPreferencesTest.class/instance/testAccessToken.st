get/set
testAccessToken
	MTPreferences accessToken: 't0k3n'.
	self assert: MTPreferences accessToken equals: 't0k3n'.
	MTPreferences removeAccessToken