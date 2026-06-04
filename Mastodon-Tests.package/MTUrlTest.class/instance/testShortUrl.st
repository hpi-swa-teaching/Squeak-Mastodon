getter/setter
testShortUrl

	| url |
	url := MTUrl new.
	
	url shortUrl: DataProvider defaultShortUrl.
	
	self assert: url shortUrl equals: DataProvider defaultShortUrl