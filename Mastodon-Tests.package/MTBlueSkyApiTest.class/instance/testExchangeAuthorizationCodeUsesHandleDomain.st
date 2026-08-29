authentication
testExchangeAuthorizationCodeUsesHandleDomain

	| api client token |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: self sampleLoginJson).
	api := self apiWithMockClient: client token: nil.
	api baseURL: 'https://peet.eurosky.social'.
	
	token := api exchangeAuthorizationCode: 'app-password'.
	
	self assert: token equals: 'jwt-token'.
	self assert: client lastPostUrl equals: 'https://eurosky.social/xrpc/com.atproto.server.createSession'.
	self
		assert: client lastPostContent
		equals: '{ "identifier": "peet.eurosky.social", "password": "app-password" }'