tests
testRepostReturnsErrorWhenSessionFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'.
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api repost: 'at://did:plc:bob/app.bsky.feed.post/abc' cid: 'cid-post'.
	
	self assert: result isError equals: true.
	self assert: result error equals: 'Could not determine current user DID'