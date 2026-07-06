add
testAddAccountDuplicateDifferentURL

	MTCredentialStore	 getInstance
		addCredentials: MTDataProvider firstAccountCredentials;
		addCredentials: MTDataProvider firstAccountCredentialsWithDifferentBaseURL.
	
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 2