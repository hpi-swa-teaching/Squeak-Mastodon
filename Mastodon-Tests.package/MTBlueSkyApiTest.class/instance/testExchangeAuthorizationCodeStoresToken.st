tests
testExchangeAuthorizationCodeStoresToken
	| api client token |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: self sampleLoginJson).
	api := self apiWithMockClient: client token: nil.
	api baseURL: 'https://pds.example.com'.

	token := api exchangeAuthorizationCode: 'alice.example.com:app-password'.

	self assert: token equals: 'jwt-token'.
	self assert: api token equals: 'jwt-token'.
	self assert: client lastPostUrl equals: 'https://pds.example.com/xrpc/com.atproto.server.createSession'.
	self assert: client lastPostContent equals: '{ "identifier": "alice.example.com", "password": "app-password" }'.
	self assert: client lastPostType equals: 'application/json'
