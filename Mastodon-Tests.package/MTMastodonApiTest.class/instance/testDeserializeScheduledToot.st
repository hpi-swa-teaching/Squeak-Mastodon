tests
testDeserializeScheduledToot

	| api json result |
	api := MTMastodonApi new.
	json := DataProvider mockScheduledStatus.
	result := api class deserialize: json intoObjectOf: MTScheduledToot.
	
	self assert: result class equals: MTScheduledToot.
	self assert: result params class equals: MTScheduledTootParams.
	self assert: result params text equals: 'test content'