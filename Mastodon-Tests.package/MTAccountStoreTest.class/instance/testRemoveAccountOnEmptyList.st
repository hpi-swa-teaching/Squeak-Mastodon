remove
testRemoveAccountOnEmptyList

	self
		shouldnt: [MTCredentialStore removeCredentials: DataProvider firstAccountCredentials]
		raise: Error