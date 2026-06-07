json
testFromJson

	| searchResult |
	searchResult := MTSearchResult from: DataProvider defaultSearchResultJsonObject.
	
	self assert: searchResult accounts size equals: DataProvider defaultAccountList size.
	self assert: searchResult statuses size equals: DataProvider defaultTootList size.
	self assert: searchResult hashtags size equals: DataProvider defaultHashtagList size