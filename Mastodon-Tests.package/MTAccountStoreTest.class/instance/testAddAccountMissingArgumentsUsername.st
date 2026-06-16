add
testAddAccountMissingArgumentsUsername

	MTAccountStore addAccount: self firstAccountWithMissingUsername.
	self assert: MTAccountStore numberOfAccounts equals: 0