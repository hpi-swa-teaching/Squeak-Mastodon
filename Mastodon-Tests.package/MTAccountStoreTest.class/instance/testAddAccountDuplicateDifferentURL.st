add
testAddAccountDuplicateDifferentURL

	MTAccountStore
		addAccount: self firstAccount;
		addAccount: self firstAccountWithDifferentBaseURL.
	
	self assert: MTAccountStore numberOfAccounts equals: 2