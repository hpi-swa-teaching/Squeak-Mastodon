tests
testDeserializeAccount

	| json result account |
	account := DataProvider defaultAccount.
	json := DataProvider defaultAccountJsonString.
	
	result := MTMastodonApi new deserialize: json intoObjectOf: MTAccount.
	
	self assert: result class equals: MTAccount.
	self assertAccount: result matches: account.