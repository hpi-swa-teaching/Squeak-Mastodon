helpers
testHasAccountOnEmpty
	
	self deny: (MTCredentialStore hasCredentials: DataProvider firstAccountCredentials)