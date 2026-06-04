json
testFromJson

	| url |
	url := MTUrl from: DataProvider defaultUrlsJsonObject.
	
	self assert: url expandedUrl equals: DataProvider defaultExpandedUrl.
	self assert: url displayUrl equals: DataProvider defaultDisplayUrl.
	self assert: url shortUrl equals: DataProvider defaultShortUrl