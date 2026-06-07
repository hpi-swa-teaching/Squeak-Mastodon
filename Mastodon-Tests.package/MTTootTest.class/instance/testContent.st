getter/setter
testContent

	| toot |
	toot := MTToot new.
	
	toot content: DataProvider defaultContent.
	
	self assert: toot content equals: DataProvider defaultContent