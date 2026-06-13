getter/setter
testReblog

	| toot |
	toot := MTToot new.
	
	toot reblog: DataProvider defaultTootPlain.
	
	self assert: toot reblog equals: DataProvider defaultTootPlain