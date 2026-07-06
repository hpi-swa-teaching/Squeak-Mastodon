tests
testTootFromFeedItemExtractsFollowStatus

	| api client feedItem toot author viewer |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'test-token'.
	
	viewer := Dictionary new.
	viewer at: 'following' put: 'at://did:plc:me/app.bsky.graph.follow/abc123'.
	
	author := self sampleAuthor.
	author at: 'viewer' put: viewer.
	
	feedItem := Dictionary new.
	feedItem at: 'post' put: (Dictionary new
		at: 'uri' put: 'at://did:plc:alice/app.bsky.feed.post/1';
		at: 'cid' put: 'cid-1';
		at: 'author' put: author;
		at: 'record' put: (Dictionary new
			at: 'text' put: 'Hello';
			at: 'createdAt' put: '2026-05-04T14:00:00.000Z';
			yourself);
		yourself).
	
	toot := api tootFromFeedItem: feedItem.
	
	self assert: toot followedByUser equals: true.
	self assert: toot followUri equals: 'at://did:plc:me/app.bsky.graph.follow/abc123'