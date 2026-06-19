as yet unclassified
testAccountAcct
	| Model |
	
	Model := MTAccount new.
	
	Model acct: 'ein acct'.
	
	self assert: (Model acct)  equals: ('ein acct'). 