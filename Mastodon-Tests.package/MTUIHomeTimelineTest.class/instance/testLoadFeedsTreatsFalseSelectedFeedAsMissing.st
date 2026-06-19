tests
testLoadFeedsTreatsFalseSelectedFeedAsMissing
	| client api timeline |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.getPreferences' with: self samplePreferencesJson.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeedGenerator?feed=at://did:plc:alice/app.bsky.feed.generator/science' with: self sampleFeedGeneratorJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	timeline := MTUIHomeTimeline new.
	timeline mastodonApi: api.
	timeline selectedFeed: false.
	
	self assert: timeline loadFeeds equals: true.
	self assert: timeline selectedFeed isTimeline equals: true
