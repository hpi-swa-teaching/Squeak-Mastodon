add
testAddAccountDuplicate

	MTAccountStore
		addAccount: self firstAccount;
		addAccount: self firstAccount.
	
	self assert: 1 equals: MTAccountStore numberOfAccounts