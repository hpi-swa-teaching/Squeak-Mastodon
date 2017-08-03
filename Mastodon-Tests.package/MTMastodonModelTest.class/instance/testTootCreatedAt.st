as yet unclassified
testTootCreatedAt
	| Model |
	
	Model :=  MTToot new.
	
	Model createdAt: 1500000000.
		
	self assert: (Model createdAt)  equals: (1500000000). 