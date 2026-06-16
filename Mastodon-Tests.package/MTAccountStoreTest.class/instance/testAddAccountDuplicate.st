add
testAddAccountDuplicate

	MTCredentialStore 
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider firstAccountCredentials.
		
	self assert: 1 equals: (MTCredentialStore numberOfCredentials).