helpers
testIsEmptyAfterAdd

	MTAccountStore addAccount: self firstAccount.
	
	self deny: MTAccountStore isEmpty