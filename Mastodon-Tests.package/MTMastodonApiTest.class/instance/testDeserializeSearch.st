deserialization
testDeserializeSearch

	| api json result |
	api := MTMastodonApi new.
	
	json := DataProvider mockSearch.
	
	result := api class deserialize: json intoObjectOf: MTSearchResult.
	
	self assert: result class equals: MTSearchResult