tests
testDeserializeSearchResult

	| json searchResult result |
	searchResult := MTDataProvider defaultSearchResult.
	json := MTDataProvider defaultSearchResultJsonString.
	
	result := MTMastodonApi new deserialize: json intoObjectOf: MTSearchResult.
	
	self assert: result class equals: MTSearchResult.
	self assert: result accounts size equals: (searchResult at: 'accounts') size.
	self assert: result accounts first displayName equals: ((searchResult at: 'accounts') first  at: 'display_name')