tests
testExchangeAuthorizationCodeStoresToken

	| api client token |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: self sampleLoginJson).
	api := self apiWithMockClient: client token: nil.
	api baseURL: 'alice.bsky.social'.
	
	token := api exchangeAuthorizationCode: 'app-password'.
	
	self assert: token equals: 'jwt-token'.
	self assert: api token equals: 'jwt-token'.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.server.createSession'.
	self
		assert: client lastPostContent
		equals: '{ "identifier": "alice.bsky.social", "password": "app-password" }'.
	self assert: client lastPostType equals: 'application/json'.
	self assert: (client headerAt: 'Accept-Encoding') equals: 'identity'.
	self assert: (client headerAt: 'Connection') equals: 'close'