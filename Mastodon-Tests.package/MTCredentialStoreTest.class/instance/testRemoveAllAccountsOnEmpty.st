remove
testRemoveAllAccountsOnEmpty

	self shouldnt: [MTCredentialStore getInstance removeAllCredentials] raise: Error