add
testAddAccountDuplicateDifferentToken

	MTCredentialStore
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider firstAccountCredentialsWithDifferentToken.
	
	self assert: MTCredentialStore numberOfCredentials equals: 1