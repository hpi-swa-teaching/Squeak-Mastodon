as yet unclassified
testTootId
	| Model |
	
	Model :=  MTToot new.
	
	Model id: 42.
		
	self assert: (Model id)  equals: (42). 