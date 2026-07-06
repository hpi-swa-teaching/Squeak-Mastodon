tests
testDeserializeAccount

	| jsonString result expected |
	expected := MTDataProvider firstAccount.
	jsonString := Json render: MTDataProvider firstAccountJson.
	
	result := MTMastodonApi new deserialize: jsonString intoObjectOf: MTAccount.
	
	self assert: result class equals: MTAccount.
	self assertAccount: result matches: expected.