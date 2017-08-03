as yet unclassified
testErrorErrors
	| Model |
	
	Model := MTError new.
	
	Model errors: Array.
	
	self assert: (Model errors)  equals: (Array). 