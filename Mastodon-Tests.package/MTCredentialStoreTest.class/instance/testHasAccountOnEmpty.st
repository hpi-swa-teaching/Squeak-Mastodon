helpers
testHasAccountOnEmpty
	
	self deny: (MTCredentialStore getInstance hasCredentials: MTDataProvider firstAccountCredentials)