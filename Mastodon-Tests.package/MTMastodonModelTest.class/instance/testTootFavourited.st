as yet unclassified
testTootFavourited
	| Model |
	
	Model :=  MTToot new.
	
	Model favourited: false.
		
	self assert: (Model favourited)  equals: (false). 