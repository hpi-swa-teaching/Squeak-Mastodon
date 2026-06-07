tests
testDeserializeSearch
	| API json result |
	API := MTMastodonApi new.
	
	json := DataProvider defaultSearchResultJsonString.
	
	result := API class deserialize: json intoObjectOf: MTSearchResult.
		
	self assert: (result class) equals: (MTSearchResult)