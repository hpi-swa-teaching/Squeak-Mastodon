tests
testDeserializeSearch
	| API json result |
	API := MTMastodonApi new.
	
	json := DataProvider  mockSearch.
	
	result := API class deserialize: json intoObjectOf: MTSearchResult.
		
	self assert: (result class) equals: (MTSearchResult)