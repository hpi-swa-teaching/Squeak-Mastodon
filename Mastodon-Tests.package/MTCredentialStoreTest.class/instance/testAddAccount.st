add
testAddAccount

	MTCredentialStore getInstance addCredentials: MTDataProvider firstAccountCredentials.
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 1