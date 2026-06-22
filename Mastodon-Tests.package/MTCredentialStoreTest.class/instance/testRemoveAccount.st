remove
testRemoveAccount

	MTCredentialStore getInstance
		addCredentials: DataProvider firstAccountCredentials;
		removeCredentials: DataProvider firstAccountCredentials.

	self assert: MTCredentialStore getInstance numberOfCredentials equals: 0