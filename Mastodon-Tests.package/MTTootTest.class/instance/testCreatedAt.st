getter/setter
testCreatedAt

	| toot |
	toot := MTToot new.
	
	toot createdAt: DataProvider defaultTootCreatedAt.
	
	self assert: toot createdAt equals: DataProvider defaultTootCreatedAt