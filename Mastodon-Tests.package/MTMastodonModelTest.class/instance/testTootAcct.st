as yet unclassified
testTootAcct
	| Model |
	
	Model :=  MTToot new.
	
	Model acct: 'schmidtflo'.
		
	self assert: (Model acct)  equals: ('schmidtflo'). 