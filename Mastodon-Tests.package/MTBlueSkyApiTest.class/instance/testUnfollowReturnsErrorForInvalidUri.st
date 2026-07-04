follow endpoints
testUnfollowReturnsErrorForInvalidUri

	| api client result |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api unfollow: 'invalid-uri'.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'Invalid follow URI'