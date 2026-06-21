defaultAccount
testDefaultAccountNonExistentListNotEmpty

	MTAccountStore
		addAccount: self firstAccount;
		defaultAccount: self secondAccount.
	
	self assert: MTAccountStore defaultAccount equals: self firstAccount.