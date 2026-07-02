tests
testUnfollowDeletesFollowRecord

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: '{}').
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api unfollow: 'at://did:plc:me/app.bsky.graph.follow/abc123'.
	
	self assert: result isSuccess equals: true.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/com.atproto.repo.deleteRecord'.
	self assert: (client lastPostContent includesSubstring: 'did:plc:me').
	self assert: (client lastPostContent includesSubstring: 'abc123').
	self assert: (client lastPostContent includesSubstring: 'app.bsky.graph.follow')