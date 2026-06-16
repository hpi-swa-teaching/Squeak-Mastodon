defaultAccount
testResetDefaultAccount

	MTCredentialStore
		addCredentials: DataProvider firstAccountCredentials;
		resetLastAddedCredentials.
	
	self assert: self emptyLoginCredentials equals: MTCredentialStore lastAddedCredentials