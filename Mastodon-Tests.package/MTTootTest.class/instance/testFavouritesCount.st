getter/setter
testFavouritesCount

	| toot |
	toot := MTToot new.
	
	toot favouritesCount: DataProvider defaultFavouritesCount.
	
	self assert: toot favouritesCount equals: DataProvider defaultFavouritesCount