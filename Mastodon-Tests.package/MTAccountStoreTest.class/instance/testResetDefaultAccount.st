defaultAccount
testResetDefaultAccount

	MTAccountStore
		addAccount: self firstAccount;
		resetDefaultAccount.
		
	self assert: self emptyLoginCredentials equals: MTAccountStore defaultAccount.