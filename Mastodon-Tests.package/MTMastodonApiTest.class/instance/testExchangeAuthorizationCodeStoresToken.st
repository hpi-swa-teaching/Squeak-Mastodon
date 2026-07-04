authentication
testExchangeAuthorizationCodeStoresToken

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"access_token":"new-token"}').
	api := self apiWithMockClient: client.
	api clientID: 'a-client-id'.
	api clientSecret: 'a-client-secret'.

	result := api exchangeAuthorizationCode: 'auth-code'.

	self assert: result equals: 'new-token'.
	self assert: api token equals: 'new-token'.
	self assert: client lastPostUrl equals: 'https://mastodon.social/oauth/token'