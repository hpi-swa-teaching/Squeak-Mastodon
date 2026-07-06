add
testAddAccountDuplicateDifferentToken

	MTCredentialStore getInstance
		addCredentials: MTDataProvider firstAccountCredentials;
		addCredentials: MTDataProvider firstAccountCredentialsWithDifferentToken.
	
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 1