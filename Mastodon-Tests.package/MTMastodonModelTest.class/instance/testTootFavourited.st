toot
testTootFavourited

	| model |
	model := MTToot new.
	
	model favourited: false.
	
	self assert: model favourited equals: false