as yet unclassified
testFromJsonObject

	| url |
	url := MTUrl from: (Json new stream: (ReadStream on: DataProvider defaultUrlsJson)) readAny.
	
	self assert: url expandedUrl equals: DataProvider defaultExpandedUrl.
	self assert: url displayUrl equals: DataProvider defaultDisplayUrl.
	self assert: url shortUrl equals: DataProvider defaultShortUrl