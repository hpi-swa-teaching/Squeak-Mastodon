add
testAddAccountDuplicateDifferentURL

	MTCredentialStore	
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider firstAccountCredentialsWithDifferentBaseURL.
	
	self assert: MTCredentialStore numberOfCredentials equals: 2