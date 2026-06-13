getter/setter
testTags

	| toot |
	toot := MTToot new.
	
	toot tags: DataProvider defaultHashtagList.
	
	self assert: toot tags equals: DataProvider defaultHashtagList