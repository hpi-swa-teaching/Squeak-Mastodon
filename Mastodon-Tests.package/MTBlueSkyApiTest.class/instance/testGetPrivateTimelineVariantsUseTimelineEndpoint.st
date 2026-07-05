tests
testGetPrivateTimelineVariantsUseTimelineEndpoint

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30'
		with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getPrivateTimelineMax: 'older-cursor'.
	self assert: result isSuccess equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30'.
	
	result := api getPrivateTimelineSince: 'newer-cursor'.
	self assert: result isSuccess equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30'