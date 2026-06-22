remove
testRemoveAllAccounts
	
	MTCredentialStore getInstance
		addCredentials: DataProvider firstAccountCredentials;
		addCredentials: DataProvider secondAccountCredentials;
		removeAllCredentials.
		
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 0