helpers
testHasAccount

	MTCredentialStore addCredentials: DataProvider firstAccountCredentials.
	self assert: (MTCredentialStore hasCredentials: DataProvider firstAccountCredentials)