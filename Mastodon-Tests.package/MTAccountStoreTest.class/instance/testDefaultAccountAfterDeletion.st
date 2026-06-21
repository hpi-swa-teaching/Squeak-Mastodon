defaultAccount
testDefaultAccountAfterDeletion

	MTAccountStore
		addAccount: self firstAccount;
		removeAccount: self firstAccount.
	
	self assert: MTAccountStore defaultAccount equals: self emptyLoginCredentials