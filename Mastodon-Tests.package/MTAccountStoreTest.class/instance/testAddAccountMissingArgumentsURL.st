add
testAddAccountMissingArgumentsURL

	MTAccountStore addAccount: self firstAccountWithMissingBaseURL.
	self assert: MTAccountStore numberOfAccounts equals: 0