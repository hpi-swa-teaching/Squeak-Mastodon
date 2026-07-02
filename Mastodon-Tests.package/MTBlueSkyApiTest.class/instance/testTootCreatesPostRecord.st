tests
testTootCreatesPostRecord

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"uri":"at://did:plc:alice/app.bsky.feed.post/abc","cid":"cid-post"}').
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api toot: 'hello bluesky'.
	
	self assert: result isSuccess equals: true.
	self assert: result value equals: 'at://did:plc:alice/app.bsky.feed.post/abc'.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.createRecord'.
	self assert: (client lastPostContent includesSubstring: 'app.bsky.feed.post').
	self assert: (client lastPostContent includesSubstring: 'hello bluesky').
	self assert: client lastPostType equals: 'application/json'