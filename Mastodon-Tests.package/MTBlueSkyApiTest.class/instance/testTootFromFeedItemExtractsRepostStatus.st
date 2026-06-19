tests
testTootFromFeedItemExtractsRepostStatus
	| api client feedItem toot viewer |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'test-token'.

	viewer := Dictionary new.
	viewer at: 'repost' put: 'at://did:plc:me/app.bsky.feed.repost/xyz789'.

	feedItem := Dictionary new.
	feedItem at: 'post' put: (Dictionary new
		at: 'uri' put: 'at://did:plc:alice/app.bsky.feed.post/1';
		at: 'cid' put: 'cid-1';
		at: 'author' put: self sampleAuthor;
		at: 'viewer' put: viewer;
		at: 'record' put: (Dictionary new at: 'text' put: 'Hello'; at: 'createdAt' put: '2026-05-04T14:00:00.000Z'; yourself);
		yourself).

	toot := api tootFromFeedItem: feedItem.

	self assert: toot reblogged equals: true.
	self assert: toot repostUri equals: 'at://did:plc:me/app.bsky.feed.repost/xyz789'