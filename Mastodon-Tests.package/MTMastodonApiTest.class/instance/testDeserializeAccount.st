tests
testDeserializeAccount

	| json result |
	json := DataProvider defaultAccountJsonString.
	
	result := MTMastodonApi deserialize: json intoObjectOf: MTAccount.
	
	self assert: result class equals: MTAccount