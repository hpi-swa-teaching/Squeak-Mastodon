remove
testRemoveAccountOnEmptyList

	self
		shouldnt: [MTCredentialStore getInstance removeCredentials: DataProvider firstAccountCredentials]
		raise: Error