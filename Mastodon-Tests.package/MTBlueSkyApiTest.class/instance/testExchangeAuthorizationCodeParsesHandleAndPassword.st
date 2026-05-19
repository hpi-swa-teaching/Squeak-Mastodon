tests
testExchangeAuthorizationCodeParsesHandleAndPassword
	| api client |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: self sampleLoginJson).
	api := self apiWithMockClient: client token: nil.

	api exchangeAuthorizationCode: 'alice.bsky.social:app-password'.

	self assert: client lastPostContent equals: '{ "identifier": "alice.bsky.social", "password": "app-password" }'.
	self assert: api token equals: 'jwt-token'
