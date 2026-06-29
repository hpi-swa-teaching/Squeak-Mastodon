tests
testGetLikesPaginatesWithCursor
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession' with: self sampleSessionJson.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getActorLikes?limit=30&actor=did:plc:alice&cursor=page2' with: '{"cursor":"page3","feed":[]}'.
	api := self apiWithMockClient: client token: 'likes-token'.

	result := api getLikesPageWithCursor: 'page2'.

	self assert: result isSuccess equals: true.
	self assert: result value cursor equals: 'page3'.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getActorLikes?limit=30&actor=did:plc:alice&cursor=page2'