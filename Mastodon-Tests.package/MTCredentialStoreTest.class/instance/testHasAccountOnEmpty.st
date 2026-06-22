helpers
testHasAccountOnEmpty
	
	self deny: (MTCredentialStore getInstance hasCredentials: DataProvider firstAccountCredentials)