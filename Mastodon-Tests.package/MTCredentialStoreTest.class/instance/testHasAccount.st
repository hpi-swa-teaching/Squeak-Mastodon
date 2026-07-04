helpers
testHasAccount

	MTCredentialStore getInstance addCredentials: MTDataProvider firstAccountCredentials.
	self assert: (MTCredentialStore getInstance hasCredentials: MTDataProvider firstAccountCredentials)