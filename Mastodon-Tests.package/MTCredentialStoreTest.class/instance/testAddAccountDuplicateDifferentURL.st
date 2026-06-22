add
testAddAccountDuplicateDifferentURL

	MTCredentialStore	 getInstance
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider firstAccountCredentialsWithDifferentBaseURL.
	
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 2