getter/setter
testFavourited

	| toot |
	toot := MTToot new.
	
	toot favourited: DataProvider defaultFavourited.
	
	self assert: toot favourited equals: DataProvider defaultFavourited