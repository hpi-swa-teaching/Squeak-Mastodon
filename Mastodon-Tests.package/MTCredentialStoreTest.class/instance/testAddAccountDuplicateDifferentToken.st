add
testAddAccountDuplicateDifferentToken

	MTCredentialStore getInstance
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider firstAccountCredentialsWithDifferentToken.
	
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 1