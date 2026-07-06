tests
testUnrepostReturnsErrorForInvalidUri

	| api client result |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api unrepost: 'invalid-uri'.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'Invalid repost URI'