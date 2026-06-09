tests
testRepostCreatesRepostRecord
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession' with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"uri":"at://did:plc:alice/app.bsky.feed.repost/new123","cid":"cid-repost"}').
	api := self apiWithMockClient: client token: 'test-token'.

	result := api repost: 'at://did:plc:bob/app.bsky.feed.post/abc' cid: 'cid-post'.

	self assert: result isSuccess equals: true.
	self assert: result value equals: 'at://did:plc:alice/app.bsky.feed.repost/new123'.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.createRecord'.
	self assert: (client lastPostContent includesSubstring: 'at://did:plc:bob/app.bsky.feed.post/abc').
	self assert: (client lastPostContent includesSubstring: 'cid-post').
	self assert: (client lastPostContent includesSubstring: 'app.bsky.feed.repost').
	self assert: client lastPostType equals: 'application/json'