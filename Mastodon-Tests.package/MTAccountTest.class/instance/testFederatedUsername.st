getter/setter
testFederatedUsername

	| Model |
	Model := MTAccount new.
	
	Model federatedUsername: DataProvider defaultFederatedUsername.
	
	self assert: Model federatedUsername equals: DataProvider defaultFederatedUsername