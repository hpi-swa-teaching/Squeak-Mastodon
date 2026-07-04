remove
testRemoveAccountOnEmptyList

	self
		shouldnt: [MTCredentialStore getInstance removeCredentials: MTDataProvider firstAccountCredentials]
		raise: Error