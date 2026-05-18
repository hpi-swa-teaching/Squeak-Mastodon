get/set
testBaseURL
	MTPreferences baseURL: 'https://mastodon.felixkoch.at'.
	self assert: MTPreferences baseURL equals: 'https://mastodon.felixkoch.at'.
	MTPreferences removeBaseURL.