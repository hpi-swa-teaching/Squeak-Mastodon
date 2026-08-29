follow endpoints
testFollowCreatesFollowRecord

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"uri":"at://did:plc:alice/app.bsky.graph.follow/new123","cid":"cid-follow"}').
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api follow: 'did:plc:bob'.
	
	self assert: result isSuccess equals: true.
	self assert: result value equals: 'at://did:plc:alice/app.bsky.graph.follow/new123'.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.createRecord'.
	self assert: (client lastPostContent includesSubstring: 'did:plc:bob').
	self assert: (client lastPostContent includesSubstring: 'app.bsky.graph.follow').
	self assert: client lastPostType equals: 'application/json'