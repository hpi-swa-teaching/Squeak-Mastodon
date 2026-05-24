tests
testGetLikesReturnsErrorWhenRequestFails
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession' with: self sampleSessionJson.
	client failGet: 'https://bsky.social/xrpc/app.bsky.feed.getActorLikes?limit=30&actor=did:plc:alice'.
	api := self apiWithMockClient: client token: 'likes-token'.

	result := api getLikes.

	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky likes request failed'