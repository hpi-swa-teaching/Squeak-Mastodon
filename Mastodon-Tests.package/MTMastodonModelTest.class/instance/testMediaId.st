as yet unclassified
testMediaId
	| Model |
	
	Model := MTMedia new.
	
	Model id: 42.
		
	self assert: (Model id)  equals: (42). 