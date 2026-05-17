add/remove
testPersistenceOfPreferences
	MTPreferences
		addAllPreferences;
		setBaseURL: 'https://mastodon.felixkoch.at';
		addAllPreferences.
	
	self assert: MTPreferences getBaseURL equals: 'https://mastodon.felixkoch.at'