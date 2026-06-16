defaultAccount
testDefaultAccountEmptyInBeginning
		
	self assert: MTCredentialStore lastAddedCredentials equals: self emptyLoginCredentials.
	