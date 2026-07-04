initialization
testFromJson

	| result expected |
	result := MTSearch from: MTDataProvider firstSearchResultJson.
	
	expected := MTDataProvider firstSearchResult.
	
	self assertSearch: result matches: expected