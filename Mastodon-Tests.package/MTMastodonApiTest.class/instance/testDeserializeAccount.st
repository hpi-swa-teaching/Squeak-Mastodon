tests
testDeserializeAccount
	| API json result |
	API := MTMastodonApi new.
	
	json := DataProvider defaultAccountJson.
	
	result := API class deserialize: json intoObjectOf: MTAccount.
		
	self assert: (result class) equals: (MTAccount)