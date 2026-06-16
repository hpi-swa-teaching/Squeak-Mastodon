remove
testRemoveAllAccountsOnEmpty

	self shouldnt: [MTCredentialStore removeAllCredentials] raise: Error