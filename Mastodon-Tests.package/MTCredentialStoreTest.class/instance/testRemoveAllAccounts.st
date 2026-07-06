remove
testRemoveAllAccounts
	
	MTCredentialStore getInstance
		addCredentials: MTDataProvider firstAccountCredentials;
		addCredentials: MTDataProvider secondAccountCredentials;
		removeAllCredentials.
		
	self assert: MTCredentialStore getInstance numberOfCredentials equals: 0