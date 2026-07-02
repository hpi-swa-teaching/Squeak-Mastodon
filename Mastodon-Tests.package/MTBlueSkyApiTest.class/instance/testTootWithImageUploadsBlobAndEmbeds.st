tests
testTootWithImageUploadsBlobAndEmbeds

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"blob":{"$type":"blob","ref":{"$link":"bafkblob"},"mimeType":"image/png","size":42},"uri":"at://did:plc:alice/app.bsky.feed.post/img"}').
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api toot: 'look at this' withImage: (Form extent: 4 @ 4 depth: 32).
	
	self assert: result isSuccess equals: true.
	self assert: result value equals: 'at://did:plc:alice/app.bsky.feed.post/img'.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.createRecord'.
	self assert: (client lastPostContent includesSubstring: 'app.bsky.embed.images').
	self assert: (client lastPostContent includesSubstring: 'bafkblob').
	self assert: (client lastPostContent includesSubstring: 'look at this')