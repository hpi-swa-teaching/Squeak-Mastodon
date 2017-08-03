as yet unclassified
testAccountCreatedAt
	| Model |
	
	Model := MTAccount new.
	
	Model createdAt: 15000000.
	
	self assert: (Model createdAt)  equals: (15000000). 