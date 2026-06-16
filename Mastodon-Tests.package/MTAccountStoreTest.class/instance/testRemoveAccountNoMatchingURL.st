remove
testRemoveAccountNoMatchingURL

	MTCredentialStore
		addCredentials: DataProvider firstAccountCredentials;
		removeCredentials: DataProvider firstAccountCredentialsWithDifferentBaseURL.
	
	self assert: (MTCredentialStore hasCredentials: DataProvider firstAccountCredentials)