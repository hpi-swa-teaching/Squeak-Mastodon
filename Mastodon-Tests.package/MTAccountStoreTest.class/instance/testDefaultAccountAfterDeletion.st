defaultAccount
testDefaultAccountAfterDeletion

	MTCredentialStore	
		addCredentials: DataProvider firstAccountCredentials;
		removeCredentials: DataProvider firstAccountCredentials.
	
	self assert: MTCredentialStore lastAddedCredentials equals: self emptyLoginCredentials