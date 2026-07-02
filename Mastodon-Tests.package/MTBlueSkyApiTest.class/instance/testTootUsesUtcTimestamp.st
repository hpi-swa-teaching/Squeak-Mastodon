tests
testTootUsesUtcTimestamp

	| api client json createdAt |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"uri":"at://did:plc:alice/app.bsky.feed.post/abc"}').
	api := self apiWithMockClient: client token: 'test-token'.
	
	api toot: 'hi'.
	
	json := api deserialize: client lastPostContent.
	createdAt := (json at: 'record') at: 'createdAt'.
	self assert: (createdAt endsWith: 'Z')