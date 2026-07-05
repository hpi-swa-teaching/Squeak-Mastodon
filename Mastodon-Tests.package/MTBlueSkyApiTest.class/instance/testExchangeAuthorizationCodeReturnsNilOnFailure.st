authentication
testExchangeAuthorizationCodeReturnsNilOnFailure

	| api client token |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse failureWith: '{"error":"AuthenticationRequired"}' code: 401).
	api := self apiWithMockClient: client token: nil.
	api baseURL: 'alice.bsky.social'.
	
	token := api exchangeAuthorizationCode: 'bad-password'.
	
	self assert: token equals: nil.
	self assert: api token equals: nil