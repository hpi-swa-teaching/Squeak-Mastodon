tests
testGetSavedFeedsReadsV2Preferences
	| api client result feeds |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.getPreferences' with: self samplePreferencesJson.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeedGenerator?feed=at://did:plc:alice/app.bsky.feed.generator/science' with: self sampleFeedGeneratorJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getSavedFeeds.
	
	self assert: result isSuccess equals: true.
	feeds := result value.
	self assert: feeds size equals: 2.
	self assert: feeds first displayName equals: 'Home'.
	self assert: feeds second displayName equals: 'Science'
