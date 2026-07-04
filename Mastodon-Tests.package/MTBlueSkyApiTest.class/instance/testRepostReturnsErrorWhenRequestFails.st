repost endpoints
testRepostReturnsErrorWhenRequestFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse failureWith: '' code: 500).
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api repost: 'at://did:plc:bob/app.bsky.feed.post/abc' cid: 'cid-post'.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky repost request failed'