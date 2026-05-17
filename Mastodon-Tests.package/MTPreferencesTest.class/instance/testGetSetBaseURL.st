get/set
testGetSetBaseURL
	MTPreferences setBaseURL: 'https://mastodon.felixkoch.at'.
	self assert: MTPreferences getBaseURL equals: 'https://mastodon.felixkoch.at'