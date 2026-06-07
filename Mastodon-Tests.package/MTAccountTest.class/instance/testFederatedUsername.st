getter/setter
testFederatedUsername

	| account |
	account := MTAccount new.
	
	account federatedUsername: DataProvider defaultFederatedUsername.
	
	self assert: account federatedUsername equals: DataProvider defaultFederatedUsername