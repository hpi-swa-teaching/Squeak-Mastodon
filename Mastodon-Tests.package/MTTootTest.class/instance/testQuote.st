getter/setter
testQuote

	| toot |
	toot := MTToot new.
	
	toot quote: DataProvider defaultTootPlain.
	
	self assert: toot quote equals: DataProvider defaultTootPlain