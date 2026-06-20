tests
testDeserializeAccount
	| API json result |
	API := MTMastodonApi new.
	
	json := DataProvider  mockAccount.
	
	result := API class deserialize: json intoObjectOf: MTAccount.
		
	self assert: (result class) equals: (MTAccount)