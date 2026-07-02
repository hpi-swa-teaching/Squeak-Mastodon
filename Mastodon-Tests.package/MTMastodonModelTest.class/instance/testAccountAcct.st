tests
testAccountAcct

	| model |
	model := MTAccount new.
	
	model acct: 'ein acct'.
	
	self assert: model acct equals: 'ein acct'