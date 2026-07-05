authentication
testGetRequestRefreshesOnAuthFailure

	| api client |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://bsky.social/xrpc/test.endpoint'.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"accessJwt":"refreshed-access","refreshJwt":"refreshed-refresh"}').
	api := self apiWithMockClient: client token: 'expired-access'.
	api refreshToken: 'valid-refresh'.
	
	api getRequest: 'https://bsky.social/xrpc/test.endpoint'.
	
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.server.refreshSession'.
	self assert: api token equals: 'refreshed-access'.
	self assert: api refreshToken equals: 'refreshed-refresh'