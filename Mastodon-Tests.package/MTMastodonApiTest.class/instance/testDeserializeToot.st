tests
testDeserializeToot

	| api json result |
	api := MTMastodonApi new.
	json := DataProvider mockStatus.
	result := api class deserialize: json intoObjectOf: MTToot.
	
	self assert: result class equals: MTToot.
	self assert: result reblogged