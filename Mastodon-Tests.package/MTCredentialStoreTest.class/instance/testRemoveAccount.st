remove
testRemoveAccount

	MTCredentialStore getInstance
		addCredentials: MTDataProvider firstAccountCredentials;
		removeCredentials: MTDataProvider firstAccountCredentials.

	self assert: MTCredentialStore getInstance numberOfCredentials equals: 0