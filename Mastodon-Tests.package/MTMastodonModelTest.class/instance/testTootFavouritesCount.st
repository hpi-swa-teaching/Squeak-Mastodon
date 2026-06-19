as yet unclassified
testTootFavouritesCount
	| Model |
	
	Model :=  MTToot new.
	
	Model favouritesCount: 42.
		
	self assert: (Model favouritesCount)  equals: (42). 