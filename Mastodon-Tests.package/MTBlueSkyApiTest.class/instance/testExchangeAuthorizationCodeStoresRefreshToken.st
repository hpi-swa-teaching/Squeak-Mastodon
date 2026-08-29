authentication
testExchangeAuthorizationCodeStoresRefreshToken

	| api client |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"accessJwt":"jwt-access","refreshJwt":"jwt-refresh","did":"did:plc:me"}').
	api := self apiWithMockClient: client token: nil.
	
	api exchangeAuthorizationCode: 'handle:password'.
	
	self assert: api token equals: 'jwt-access'.
	self assert: api refreshToken equals: 'jwt-refresh'