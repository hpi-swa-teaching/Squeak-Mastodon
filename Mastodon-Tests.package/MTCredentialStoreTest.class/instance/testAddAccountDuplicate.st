add
testAddAccountDuplicate

	MTCredentialStore getInstance
		addCredentials: MTDataProvider firstAccountCredentials;
		addCredentials: MTDataProvider firstAccountCredentials.
		
	self assert: 1 equals: (MTCredentialStore getInstance numberOfCredentials).