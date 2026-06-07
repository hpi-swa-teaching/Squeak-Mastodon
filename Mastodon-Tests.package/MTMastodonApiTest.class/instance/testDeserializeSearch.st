tests
testDeserializeSearch
	| json result |
	
	json := DataProvider defaultSearchResultJsonString.
	
	result := MTMastodonApi new deserialize: json intoObjectOf: MTSearchResult.
		
	self assert: (result class) equals: (MTSearchResult)