get/set
testGetSetAccessToken
	MTPreferences setAccessToken: 't0k3n'.
	self assert: MTPreferences getAccessToken equals: 't0k3n'