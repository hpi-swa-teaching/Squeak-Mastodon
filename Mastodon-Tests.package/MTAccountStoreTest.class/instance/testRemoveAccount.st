remove
testRemoveAccount

	MTCredentialStore
		addCredentials: DataProvider firstAccountCredentials;
		removeCredentials: DataProvider firstAccountCredentials.

	self assert: MTCredentialStore numberOfCredentials equals: 0