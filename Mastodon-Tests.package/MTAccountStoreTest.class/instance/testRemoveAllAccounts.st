remove
testRemoveAllAccounts
	
	MTCredentialStore
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider secondAccountCredentials;
		removeAllCredentials.
		
	self assert: MTCredentialStore numberOfCredentials equals: 0