getter/setter
testUrls

	| toot |
	toot := MTToot new.
	
	toot urls: DataProvider defaultUrls.
	
	self assert: toot urls equals: DataProvider defaultUrls