remove
testRemoveAccountNoMatchingURL

	MTCredentialStore getInstance
		addCredentials: DataProvider firstAccountCredentials;
		removeCredentials: DataProvider firstAccountCredentialsWithDifferentBaseURL.
	
	self assert: (MTCredentialStore getInstance hasCredentials: DataProvider firstAccountCredentials)