add
testAddAccountMissingArgumentsToken

	MTAccountStore addAccount: self firstAccountWithMissingMissingToken.
	self assert: MTAccountStore numberOfAccounts equals: 0