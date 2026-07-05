tests
testDeserializeSearchResult

	| result expected jsonString |
	jsonString := Json render: MTDataProvider firstSearchResultJson.
	result := MTMastodonApi new deserialize: jsonString intoObjectOf: MTSearch.
	
	expected := MTDataProvider firstSearchResult.
	
	self assertSearch: result matches: expected