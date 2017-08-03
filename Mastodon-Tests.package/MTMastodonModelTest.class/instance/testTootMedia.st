as yet unclassified
testTootMedia
	| Model |
	
	Model :=  MTToot new.
	
	Model media: false.
		
	self assert: (Model media)  equals: (false). 