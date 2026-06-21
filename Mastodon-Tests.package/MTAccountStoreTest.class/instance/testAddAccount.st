add
testAddAccount

	MTAccountStore addAccount: self firstAccount.
	self assert: MTAccountStore numberOfAccounts equals: 1