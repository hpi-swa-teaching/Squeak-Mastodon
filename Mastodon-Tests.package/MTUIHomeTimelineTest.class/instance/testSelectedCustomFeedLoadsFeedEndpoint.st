tests
testSelectedCustomFeedLoadsFeedEndpoint
	| client api timeline feed |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience&limit=30' with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	feed := MTBlueSkyFeed new
		displayName: 'Science';
		uri: 'at://did:plc:alice/app.bsky.feed.generator/science';
		sourceType: #feed;
		yourself.
	timeline := MTUIHomeTimeline new.
	timeline mastodonApi: api.
	timeline selectedFeed: feed.
	
	self assert: timeline loadSelectedFeed equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience&limit=30'
