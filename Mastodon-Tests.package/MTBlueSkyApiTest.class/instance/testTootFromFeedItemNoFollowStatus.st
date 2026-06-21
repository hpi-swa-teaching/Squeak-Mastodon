tests
testTootFromFeedItemNoFollowStatus
	| api client feedItem toot |
	client := MTBlueSkyMockWebClient new.
	api := self apiWithMockClient: client token: 'test-token'.
	
	feedItem := Dictionary new.
	feedItem at: 'post' put: (Dictionary new
		at: 'uri' put: 'at://did:plc:alice/app.bsky.feed.post/1';
		at: 'cid' put: 'cid-1';
		at: 'author' put: self sampleAuthor;
		at: 'record' put: (Dictionary new at: 'text' put: 'Hello'; at: 'createdAt' put: '2026-05-04T14:00:00.000Z'; yourself);
		yourself).
	
	toot := api tootFromFeedItem: feedItem.
	
	self assert: toot followedByUser equals: false.
	self assert: toot followUri equals: ''