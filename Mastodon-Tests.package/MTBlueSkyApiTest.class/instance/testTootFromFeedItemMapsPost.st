tests
testTootFromFeedItemMapsPost

	| api toot account |
	api := MTBlueSkyApi new.
	
	toot := api tootFromFeedItem: self sampleFeedItem.
	account := toot acct.
	
	self assert: toot class equals: MTToot.
	self assert: toot id equals: 'at://did:plc:alice/app.bsky.feed.post/1'.
	self assert: toot cid equals: 'cid-1'.
	self assert: toot createdAt equals: '2026-05-04T14:00:00.000Z'.
	self assert: toot content equals: 'Hello Bluesky'.
	self assert: toot favourited equals: false.
	self assert: toot reblogged equals: false.
	self assert: toot repostUri equals: ''.
	self assert: toot reblogsCount equals: 2.
	self assert: toot favouritesCount equals: 7.
	self assert: toot urls equals: 'at://did:plc:alice/app.bsky.feed.post/1'.
	self assert: account username equals: 'alice.bsky.social'