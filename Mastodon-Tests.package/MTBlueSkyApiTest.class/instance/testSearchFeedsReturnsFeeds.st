feed endpoints
testSearchFeedsReturnsFeeds

	| api client result feeds |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.unspecced.getPopularFeedGenerators?limit=10&query=science%20news'
		with: self sampleFeedSearchJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api searchFeeds: 'science news'.
	
	self assert: result isSuccess equals: true.
	feeds := result value.
	self assert: feeds size equals: 2.
	self assert: feeds first displayName equals: 'Science'.
	self
		assert: client lastGetUrl
		equals: 'https://bsky.social/xrpc/app.bsky.unspecced.getPopularFeedGenerators?limit=10&query=science%20news'