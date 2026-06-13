tests
testGetPrivateTimelineShowsFeed
	| api client result toots toot account |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30' with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.

	result := api getPrivateTimeline.
	toots := result value.
	toot := toots first.
	account := toot account.

	self assert: result isSuccess equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30'.
	self assert: (client headerAt: 'Authorization') equals: 'Bearer feed-token'.
	self assert: toots size equals: 1.
	self assert: toot class equals: MTToot.
	self assert: toot id equals: 'at://did:plc:alice/app.bsky.feed.post/1'.
	self assert: toot content equals: 'Hello Bluesky'.
	self assert: account username equals: 'alice.bsky.social'
