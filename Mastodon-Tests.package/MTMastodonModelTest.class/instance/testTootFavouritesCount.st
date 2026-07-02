tests
testTootFavouritesCount

	| model |
	model := MTToot new.
	
	model favouritesCount: 42.
	
	self assert: model favouritesCount equals: 42