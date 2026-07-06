tests
testGetStatusesVariantsUseAuthorFeedEndpoint

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getAuthorFeed?limit=30&actor=did:plc:alice'
		with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getStatuses: 'did:plc:alice' max: 'older-cursor'.
	self assert: result isSuccess equals: true.
	self
		assert: client lastGetUrl
		equals: 'https://bsky.social/xrpc/app.bsky.feed.getAuthorFeed?limit=30&actor=did:plc:alice'.
	
	result := api getStatuses: 'did:plc:alice' since: 'newer-cursor'.
	self assert: result isSuccess equals: true.
	self
		assert: client lastGetUrl
		equals: 'https://bsky.social/xrpc/app.bsky.feed.getAuthorFeed?limit=30&actor=did:plc:alice'