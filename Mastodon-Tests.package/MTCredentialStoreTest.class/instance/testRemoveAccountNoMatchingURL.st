remove
testRemoveAccountNoMatchingURL

	MTCredentialStore getInstance
		addCredentials: MTDataProvider firstAccountCredentials;
		removeCredentials: MTDataProvider firstAccountCredentialsWithDifferentBaseURL.
	
	self assert: (MTCredentialStore getInstance hasCredentials: MTDataProvider firstAccountCredentials)