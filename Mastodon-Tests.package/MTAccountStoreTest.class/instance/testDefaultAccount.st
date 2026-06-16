defaultAccount
testDefaultAccount

	MTCredentialStore addCredentials: DataProvider firstAccountCredentials.
		
	self assert: MTCredentialStore lastAddedCredentials equals: self firstAccount.
	