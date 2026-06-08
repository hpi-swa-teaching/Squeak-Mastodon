json
testFromJson

	| searchResult |
	searchResult := MTSearchResult from: DataProvider defaultSearchResultJsonObject.
	
	self assert: searchResult accounts size equals: DataProvider defaultAccountList size.