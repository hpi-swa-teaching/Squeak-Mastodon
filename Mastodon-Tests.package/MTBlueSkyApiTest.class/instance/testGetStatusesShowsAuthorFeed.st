status endpoints
testGetStatusesShowsAuthorFeed

	| api client result toots |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getAuthorFeed?limit=30&actor=did:plc:alice'
		with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getStatuses: 'did:plc:alice'.
	toots := result value.
	
	self assert: result isSuccess equals: true.
	self
		assert: client lastGetUrl
		equals: 'https://bsky.social/xrpc/app.bsky.feed.getAuthorFeed?limit=30&actor=did:plc:alice'.
	self assert: toots size equals: 1.
	self assert: toots first content equals: 'Hello Bluesky'