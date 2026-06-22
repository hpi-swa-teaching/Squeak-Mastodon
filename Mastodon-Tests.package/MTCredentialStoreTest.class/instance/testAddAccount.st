add
testAddAccount

	MTCredentialStore getInstance addCredentials: DataProvider firstAccountCredentials.
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 1