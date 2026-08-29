feed endpoints
testSaveFeedWritesPreferences

	| api client feed result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.getPreferences'
		with: '{"preferences":[]}'.
	client postResponse: (MTBlueSkyMockResponse successWith: '{}').
	api := self apiWithMockClient: client token: 'feed-token'.
	feed := MTBlueSkyFeed new
		displayName: 'Science';
		uri: 'at://did:plc:alice/app.bsky.feed.generator/science';
		sourceType: #feed;
		yourself.
	
	result := api saveFeed: feed.
	
	self assert: result isSuccess equals: true.
	self assert: client lastPostUrl equals: 'https://bsky.social/xrpc/app.bsky.actor.putPreferences'.
	self assert: (client lastPostContent includesSubstring: 'savedFeedsPrefV2').
	self assert: (client lastPostContent includesSubstring: 'at://did:plc:alice/app.bsky.feed.generator/science')