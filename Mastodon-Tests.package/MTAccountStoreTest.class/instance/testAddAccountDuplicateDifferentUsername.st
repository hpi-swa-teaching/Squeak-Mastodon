add
testAddAccountDuplicateDifferentUsername

	MTAccountStore
		addAccount: self firstAccount;
		addAccount: self firstAccountWithDifferentUsername.
	
	self assert: MTAccountStore numberOfAccounts equals: 2