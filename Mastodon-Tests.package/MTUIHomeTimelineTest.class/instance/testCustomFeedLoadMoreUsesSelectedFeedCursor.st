tests
testCustomFeedLoadMoreUsesSelectedFeedCursor

	| client api timeline feed |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fvideo&limit=30'
		with: self sampleTimelineWithCursorJson.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fvideo&limit=30&cursor=next-page'
		with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	feed := MTBlueSkyFeed new
		displayName: 'Video';
		uri: 'at://did:plc:alice/app.bsky.feed.generator/video';
		sourceType: #feed;
		yourself.
	timeline := MTUIHomeTimeline new.
	timeline mastodonApi: api.
	timeline selectedFeed: feed.
	
	self assert: timeline loadSelectedFeed equals: true.
	self assert: timeline loadMoreToot equals: true.
	self
		assert: client lastGetUrl
		equals: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fvideo&limit=30&cursor=next-page'