as yet unclassified
testAccountHeader
	| Model |
	
	Model := MTAccount new.
	
	Model header: 'header'.
	
	self assert: (Model header)  equals: ('header'). 