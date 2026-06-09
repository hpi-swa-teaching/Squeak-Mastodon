tests
testGetLikesReturnsLikedPosts
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession' with: self sampleSessionJson.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getActorLikes?limit=30&actor=did:plc:alice' with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'likes-token'.

	result := api getLikes.

	self assert: result isSuccess equals: true.
	self assert: result value size equals: 1.
	self assert: result value first content equals: 'Hello Bluesky'