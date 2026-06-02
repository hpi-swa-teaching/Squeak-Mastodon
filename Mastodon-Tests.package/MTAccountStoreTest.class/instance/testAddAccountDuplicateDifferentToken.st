add
testAddAccountDuplicateDifferentToken

	MTAccountStore
		addAccount: self firstAccount;
		addAccount: self firstAccountWithDifferentToken.
	
	self assert: MTAccountStore numberOfAccounts equals: 1