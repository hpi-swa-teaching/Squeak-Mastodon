add
testAddAccountDuplicate

	MTCredentialStore getInstance
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider firstAccountCredentials.
		
	self assert: 1 equals: (MTCredentialStore getInstance numberOfCredentials).