as yet unclassified
testAccountUsername
	| Model |
	
	Model := MTAccount new.
	
	Model username: 'schmidtflo'.
	
	self assert: (Model username)  equals: ('schmidtflo'). 