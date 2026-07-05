authentication
testVerifyCredentialsReturnsErrorWhenRequestFails

	| api result |
	api := self apiWithMockClient: MTBlueSkyMockWebClient new token: 'expired-token'.
	
	result := api verifyCredentials.
	
	self assert: result isError equals: true