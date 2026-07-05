authentication
testRefreshSessionUpdatesTokens

	| api client |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"accessJwt":"new-access","refreshJwt":"new-refresh"}').
	api := self apiWithMockClient: client token: 'old-access'.
	api refreshToken: 'old-refresh'.
	
	self assert: api refreshSession equals: true.
	
	self assert: api token equals: 'new-access'.
	self assert: api refreshToken equals: 'new-refresh'.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.server.refreshSession'.
	self assert: (client headerAt: 'Authorization') equals: 'Bearer old-refresh'