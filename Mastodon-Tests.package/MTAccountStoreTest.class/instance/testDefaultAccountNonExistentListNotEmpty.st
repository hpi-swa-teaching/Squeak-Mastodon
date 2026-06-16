defaultAccount
testDefaultAccountNonExistentListNotEmpty

	MTCredentialStore
		addCredentials: DataProvider firstAccountCredentials;
		lastAddedCredentials: DataProvider secondAccountCredentials.
	
	self assert: MTCredentialStore lastAddedCredentials equals: self firstAccount.