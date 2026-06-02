remove
testRemoveAccount

	MTAccountStore
		addAccount: self firstAccount;
		removeAccount: self firstAccount.

	self assert: MTAccountStore numberOfAccounts equals: 0