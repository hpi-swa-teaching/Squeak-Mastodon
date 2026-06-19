tests
testCustomFeedRefreshReloadsSelectedFeedEndpoint
	| client api timeline feed |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at://did:plc:alice/app.bsky.feed.generator/video&limit=30' with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	feed := MTBlueSkyFeed new
		displayName: 'Video';
		uri: 'at://did:plc:alice/app.bsky.feed.generator/video';
		sourceType: #feed;
		yourself.
	timeline := MTUIHomeTimeline new.
	timeline mastodonApi: api.
	timeline selectedFeed: feed.
	
	self assert: timeline refreshToots equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at://did:plc:alice/app.bsky.feed.generator/video&limit=30'
