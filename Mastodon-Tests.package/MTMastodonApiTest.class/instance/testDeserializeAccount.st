tests
testDeserializeAccount

	| api json result |
	api := MTMastodonApi new.
	
	json := DataProvider mockAccount.
	
	result := api class deserialize: json intoObjectOf: MTAccount.
	
	self assert: result class equals: MTAccount