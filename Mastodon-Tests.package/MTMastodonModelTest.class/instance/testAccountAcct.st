as yet unclassified
testAccountAcct

	| Model |
	Model := MTAccount new.
	
	Model federatedUsername: 'ein acct'.
	
	self assert: Model federatedUsername equals: 'ein acct'