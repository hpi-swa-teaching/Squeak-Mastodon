defaultAccount
testDefaultAccountEmptyInBeginning
		
	self assert: MTAccountStore defaultAccount equals: self emptyLoginCredentials.
	