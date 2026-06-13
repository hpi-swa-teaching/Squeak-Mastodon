getter/setter
testReblogsCount

	| toot |
	toot := MTToot new.
	
	toot reblogsCount: DataProvider defaultReblogsCount.
	
	self assert: toot reblogsCount equals: DataProvider defaultReblogsCount