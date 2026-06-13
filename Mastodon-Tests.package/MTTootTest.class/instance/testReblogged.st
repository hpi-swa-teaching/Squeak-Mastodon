getter/setter
testReblogged

	| toot |
	toot := MTToot new.
	
	toot reblogged: DataProvider defaultReblogged.
	
	self assert: toot reblogged equals: DataProvider defaultReblogged