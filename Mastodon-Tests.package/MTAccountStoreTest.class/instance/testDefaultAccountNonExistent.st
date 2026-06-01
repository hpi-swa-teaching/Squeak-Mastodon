defaultAccount
testDefaultAccountNonExistent

	MTAccountStore defaultAccount: self secondAccount.
	
	self assert: MTAccountStore defaultAccount equals: self emptyLoginCredentials