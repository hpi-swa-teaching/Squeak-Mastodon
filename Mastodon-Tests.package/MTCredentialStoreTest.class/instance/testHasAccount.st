helpers
testHasAccount

	MTCredentialStore getInstance addCredentials: DataProvider firstAccountCredentials.
	self assert: (MTCredentialStore getInstance hasCredentials: DataProvider firstAccountCredentials)