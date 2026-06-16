remove
testRemoveAllAccounts
	
	MTAccountStore
		addAccount: self firstAccount;
		addAccount: self secondAccount;
		removeAllAccounts.
		
	self assert: MTAccountStore numberOfAccounts equals: 0