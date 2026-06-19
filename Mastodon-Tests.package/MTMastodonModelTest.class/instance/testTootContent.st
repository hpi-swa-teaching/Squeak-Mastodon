as yet unclassified
testTootContent
	| Model |
	
	Model :=  MTToot new.
	
	Model content: 'HPI ist cool'.
		
	self assert: (Model content)  equals: ('HPI ist cool'). 