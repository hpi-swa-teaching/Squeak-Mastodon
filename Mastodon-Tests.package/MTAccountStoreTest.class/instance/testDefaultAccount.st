defaultAccount
testDefaultAccount

	MTAccountStore addAccount: self firstAccount.
		
	self assert: MTAccountStore defaultAccount equals: self firstAccount.
	