getter/setter
testId

	| toot |
	toot := MTToot new.
	
	toot id: DataProvider defaultTootId.
	
	self assert: toot id equals: DataProvider defaultTootId