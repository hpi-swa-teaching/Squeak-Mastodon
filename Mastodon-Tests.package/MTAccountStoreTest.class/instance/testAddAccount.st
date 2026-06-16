add
testAddAccount

	MTCredentialStore addCredentials: DataProvider firstAccountCredentials.
	self assert: MTCredentialStore numberOfCredentials equals: 1