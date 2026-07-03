tests
testGetTimelinePagePaginatesWithCursor

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30&cursor=page2'
		with: '{"cursor":"page3","feed":[]}'.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getTimelinePageWithCursor: 'page2'.
	
	self assert: result isSuccess equals: true.
	self assert: result value cursor equals: 'page3'.
	self assert: result value toots isEmpty equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30&cursor=page2'