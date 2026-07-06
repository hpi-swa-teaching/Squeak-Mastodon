initialization
testFromEmptyJson

	| result expected |
	result := MTSearch from: MTDataProvider emptySearchResultJson.
	
	expected := MTDataProvider emptySearchResult.
	
	self assertSearch: result matches: expected