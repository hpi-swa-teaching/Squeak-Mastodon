add/remove
testPersistenceOfPreferences
	MTPreferences
		createAllPreferences;
		baseURL: 'https://mastodon.felixkoch.at';
		createAllPreferences.
	
	self assert: MTPreferences baseURL equals: 'https://mastodon.felixkoch.at'