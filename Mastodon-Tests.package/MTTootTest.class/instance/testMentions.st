getter/setter
testMentions

	| toot |
	toot := MTToot new.
	
	toot mentions: DataProvider defaultMentions.
	
	self assert: toot mentions equals: DataProvider defaultMentions