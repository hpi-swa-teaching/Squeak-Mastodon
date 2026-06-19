as yet unclassified
testMediaType
	| Model |
	
	Model := MTMedia new.
	
	Model type:  'ein Typ'.
		
	self assert: (Model type)  equals: ('ein Typ'). 