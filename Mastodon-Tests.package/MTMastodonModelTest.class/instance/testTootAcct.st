as yet unclassified
testTootAcct
	| Model |
	
	Model :=  MTToot new.
	
	Model account: 'schmidtflo'.
		
	self assert: (Model account)  equals: ('schmidtflo'). 