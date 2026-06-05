getter/setter
testAccount

	| toot |
	toot := MTToot new.
	
	toot account: DataProvider defaultAccount.
	
	self assert: toot account equals: DataProvider defaultAccount