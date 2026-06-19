tests
testGetFeedFallsBackToPublicAppView
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience&limit=30'.
	client respondToGet: 'https://public.api.bsky.app/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience&limit=30' with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getFeed: 'at://did:plc:alice/app.bsky.feed.generator/science'.
	
	self assert: result isSuccess equals: true.
	self assert: result value size equals: 1.
	self assert: client lastGetUrl equals: 'https://public.api.bsky.app/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience&limit=30'
